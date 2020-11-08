import '../helpers/http.dart';
import '../helpers/json.dart';
import '../base/transport_client.dart';

import 'vk_settings.dart';
import './errors/vk_errors.dart';

class VKClient {
  final VKSettings settings;
  final TransportClient transportClient;

  const VKClient(
    this.settings,
    this.transportClient,
  )   : assert(settings != null),
        assert(transportClient != null);

  Future<TransportClientResponse> _fetch(
    String url, [
    Map<String, dynamic> parameters,
  ]) async {
    parameters = {...?parameters, 'v': settings.apiVersion};

    parameters.updateAll((_, value) {
      if (value is List) return value.join(',');
      return '$value';
    });

    if (settings.accessToken?.isNotEmpty ?? false) {
      parameters['access_token'] = settings.accessToken;
    }

    parameters = parameters.cast<String, String>();
    return transportClient.post(url, parameters);
  }

  Future<T> call<T>(
    String name, [
    Map<String, dynamic> parameters,
    JsonDeserializer<T> jsonDeserializer,
  ]) async {
    try {
      final response = await _fetch(
        Http.rtrimSlashes(settings.apiBaseUrl) + '/method/$name',
        parameters,
      );
      return Json.decode(response.body, (json) {
        if (json is! Map) throw Exception('Failed to parse body. \n$json.');

        if (json.containsKey('error')) {
          throw VKErrorMapper.mapErrorResponseToException(
            json['error']['error_msg'],
            json['error']['error_code'],
          );
        }
        return jsonDeserializer(json['response']);
      });
    } on VKApiException catch (_) {
      rethrow;
    } on Exception catch (error) {
      throw VKErrorMapper.mapErrorResponseToException('$error');
    }
  }
}

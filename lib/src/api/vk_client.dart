import '../helpers/http.dart';
import '../base/transport_client.dart';

import 'vk_settings.dart';

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

  Future<String> call(String name, [Map<String, dynamic> parameters]) async {
    final response = await _fetch(
      Http.rtrimSlashes(settings.apiBaseUrl) + '/method/$name',
      parameters,
    );

    return response.body;
  }
}

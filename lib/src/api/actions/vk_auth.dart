import 'package:meta/meta.dart';

import '../../helpers/http.dart';

import '../vk_client.dart';
import '../enums/vk_enums.dart';
import '../errors/vk_errors.dart';

const vkAuthResponseTypes = ['code', 'token'];
const vkAuthDisplayTypes = ['popup', 'page', 'mobile'];

class VKAuth {
  final VKClient client;

  const VKAuth({@required this.client}) : assert(client != null);

  String getAuthorizeUrl({
    String state = '',
    bool revoke = false,
    @required List<String> scope,
    List<int> groupIds = const [],
    VKAuthDisplay displayType = VKAuthDisplay.mobile,
    VKAuthResponseType responseType = VKAuthResponseType.token,
  }) {
    responseType ??= client.settings.authResponseType;
    if (responseType == null) {
      throw VKErrorMapper.mapErrorResponseToException('Invalid response type.');
    }

    var url = '${client.settings.oAuthBaseUrl}authorize'
        '?v=${client.settings.apiVersion}'
        '&scope=${scope.join(',')}'
        '&client_id=${client.settings.clientId}'
        '&redirect_uri=${client.settings.oAuthRedirectUri}'
        '&display=${vkAuthDisplayTypes[displayType.index]}'
        '&response_type=${vkAuthResponseTypes[responseType.index]}';

    if (revoke) url += '&revoke=1';
    if (state.isNotEmpty) url += '&state=${state}';
    if (groupIds.isNotEmpty) url += '&group_ids=${groupIds.join(',')}';

    return url;
  }

  Map<String, String> parseAuthUrl(String uri) {
    final query = uri.substring(uri.indexOf('#') + 1);
    final parameters = Http.explodeQuery(query);

    if (parameters.containsKey('error')) {
      throw VKErrorMapper.mapErrorResponseToException('User auth denied.', 5);
    }

    return parameters;
  }
}

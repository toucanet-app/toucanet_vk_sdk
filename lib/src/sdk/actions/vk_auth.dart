import 'package:meta/meta.dart';

import '../../utils/http.dart';

import '../enums/vk_enums.dart';
import '../errors/vk_error_mapper.dart';

class VKAuth {
  final int clientId;
  final double version;
  static const defaultHost = 'https://oauth.vk.com/';

  const VKAuth(this.clientId, this.version);

  String getAuthorizeUrl({
    String state = '',
    bool revoke = false,
    @required List<String> scope,
    List<int> groupIds = const [],
    String oAuthUrl = defaultHost,
    String redirectUri = '$defaultHost/blank.html',
    VKAuthDisplay displayType = VKAuthDisplay.mobile,
    VKAuthResponseType responseType = VKAuthResponseType.token,
  }) {
    const displayTypes = ['popup', 'page', 'mobile'];
    const responseTypes = ['code', 'token'];

    var url = '${oAuthUrl}authorize'
        '?v=${version}'
        '&scope=${scope.join(',')}'
        '&client_id=${clientId}'
        '&redirect_uri=${redirectUri}blank.html'
        '&display=${displayTypes[displayType.index]}'
        '&response_type=${responseTypes[responseType.index]}';

    if (revoke) url += '&revoke=1';
    if (state.isNotEmpty) url += '&state=${state}';
    if (groupIds.isNotEmpty) url += '&group_ids=${groupIds.join(',')}';

    return url;
  }

  String getAccessToken() {
    return '';
  }

  Map<String, String> parseAuthUrl(String uri) {
    final query = uri.substring(uri.indexOf('#') + 1);
    final parameters = Http.explodeQuery(query);

    if (parameters.containsKey('error')) {
      throw ErrorMapper.mapErrorResponseToException(5, 'Auth denied.');
    }

    return parameters;
  }
}

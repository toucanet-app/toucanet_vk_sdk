import 'enums/vk_enums.dart';

class VKSettings {
  final int clientId;
  final double apiVersion;
  final String clientSecret;
  final VKAuthResponseType authResponseType;

  String accessToken;

  String apiBaseUrl;
  String oAuthBaseUrl;
  String oAuthRedirectUri;

  VKSettings({
    this.clientId,
    this.accessToken,
    this.clientSecret,
    this.apiVersion = 5.124,
    this.apiBaseUrl = 'https://api.vk.com/',
    this.oAuthBaseUrl = 'https://oauth.vk.com/',
    this.oAuthRedirectUri = 'https://oauth.vk.com/blank.html',
    this.authResponseType,
  }) : assert(clientId != null || accessToken != null);
}

import 'package:meta/meta.dart';
import 'package:toucanet_vk_sdk/http_client.dart';

import 'api/vk_client.dart';
import 'api/vk_settings.dart';
import 'api/enums/vk_enums.dart';
import 'api/actions/vk_actions.dart';

import 'base/transport_client.dart';

class VK {
  final VKClient client;
  final VKSettings settings;

  VKAuth _auth;
  VKAuth get auth => _auth ??= VKAuth(client: client);

  VKMessages _messages;
  VKMessages get messages => _messages ??= VKMessages(client: client);

  VK._(TransportClient transportClient, this.settings)
      : assert(settings != null),
        client = VKClient(settings, transportClient ?? HttpClient());

  /// Authentication by specifying an existing access token.
  factory VK({
    double version = 5.124,
    @required String accessToken,
    TransportClient transportClient,
  }) {
    assert(accessToken != null);
    return VK._(
      transportClient,
      VKSettings(apiVersion: version, accessToken: accessToken),
    );
  }

  /// A token is returned to the device where authentication dialog was open.
  /// It can be used only for requests sent directly from users' devices.
  factory VK.implicitFlow({
    double version = 5.124,
    String redirectUri = 'https://oauth.vk.com/blank.html',
    @required int clientId,
    TransportClient transportClient,
  }) {
    assert(clientId != null);
    return VK._(
      transportClient,
      VKSettings(
        clientId: clientId,
        apiVersion: version,
        oAuthRedirectUri: redirectUri,
        authResponseType: VKAuthResponseType.token,
      ),
    );
  }

  /// Two-stage method with additional app server authentication.
  /// A token is sent directly to a server and can be used for automated requests.
  factory VK.codeFlow({
    double version = 5.124,
    String redirectUri = 'https://oauth.vk.com/blank.html',
    @required int clientId,
    TransportClient transportClient,
  }) {
    assert(clientId != null);
    return VK._(
      transportClient,
      VKSettings(
        clientId: clientId,
        apiVersion: version,
        oAuthRedirectUri: redirectUri,
        authResponseType: VKAuthResponseType.code,
      ),
    );
  }

  /// Authentication by application secret key.
  /// This flow is only used to access special secure methods.
  factory VK.credentialsFlow({
    double version = 5.124,
    String redirectUri = 'https://oauth.vk.com/blank.html',
    @required int clientId,
    @required String clientSecret,
    TransportClient transportClient,
  }) {
    assert(clientId != null);
    assert(clientSecret != null);
    return VK._(
      transportClient,
      VKSettings(
        apiVersion: version,
        clientId: clientId,
        clientSecret: clientSecret,
        oAuthRedirectUri: redirectUri,
        authResponseType: VKAuthResponseType.code,
      ),
    );
  }
}

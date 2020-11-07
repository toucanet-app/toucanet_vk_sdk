import 'package:meta/meta.dart';

import 'base/transport_client.dart';
import 'http_client.dart';
import 'sdk/actions/vk_actions.dart';

class VKClient {
  final TransportClient transportClient;

  final int clientId;
  final double version;
  final String clientSecret;

  final VKAuth auth;
  VKMessages _messages;

  VKClient({
    @required this.clientId,
    this.clientSecret,
    this.version = 5.103,
    this.transportClient = const HttpClient(),
  })  : assert(transportClient != null),
        auth = VKAuth(clientId, version);
  VKMessages get messages {
    _messages ??= VKMessages(transportClient, auth);
    return _messages;
  }
}

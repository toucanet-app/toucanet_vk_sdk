import 'package:meta/meta.dart';

import 'http_client.dart';
import 'base/transport_client.dart';
import 'sdk/actions/vk_actions.dart';

class VKClient {
  final TransportClient transportClient;

  final int clientId;
  final double version;
  final String clientSecret;

  final VKAuth auth;
  final VKMessages messages;

  VKClient({
    @required this.clientId,
    this.clientSecret,
    this.version = 5.103,
    this.transportClient = const HttpClient(),
  })  : assert(transportClient != null),
        auth = VKAuth(clientId, version),
        messages = VKMessages(transportClient);
}

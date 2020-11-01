import 'package:meta/meta.dart';
import 'http_client.dart';
import 'sdk/actions/vk_auth.dart';
import 'base/transport_client.dart';

class VKClient {
  final TransportClient transportClient;

  final int clientId;
  final double version;
  final String clientSecret;

  final VKAuth auth;

  VKClient({
    @required this.clientId,
    this.clientSecret,
    this.version = 5.103,
    this.transportClient = const HttpClient(),
  })  : assert(transportClient != null),
        auth = VKAuth(clientId, version);
}

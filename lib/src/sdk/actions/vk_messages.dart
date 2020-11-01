import '../../base/transport_client.dart';

class VKMessages {
  final TransportClient transportClient;

  const VKMessages(this.transportClient) : assert(transportClient != null);
}

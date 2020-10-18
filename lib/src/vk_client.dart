import 'auth/vk_auth.dart';
import 'package:meta/meta.dart';

class VKClient {
  final int clientId;
  final double version;
  final String clientSecret;

  final VKAuth auth;

  VKClient({@required this.clientId, this.clientSecret, this.version = 5.103})
      : auth = VKAuth(clientId, version);
}

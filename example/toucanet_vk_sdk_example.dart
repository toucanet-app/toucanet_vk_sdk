import 'package:toucanet_vk_sdk/toucanet_vk_sdk.dart';

void main(List<String> args) async {
  final client = VKClient(clientId: 123);
  print(client.auth.getAuthorizeUrl(scope: []));
}

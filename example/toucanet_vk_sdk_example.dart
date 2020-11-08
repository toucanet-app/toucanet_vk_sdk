import 'package:toucanet_vk_sdk/toucanet_vk_sdk.dart';

void main(List<String> args) async {
  // final vk = VK.implicitFlow(clientId: 7378583);
  // print(vk.auth.getAuthorizeUrl(scope: [VKAuthUserScope.messages]));

  final vk = VK(
    accessToken: 'token',
  );

  print(await vk.messages.getConversations(1));
}

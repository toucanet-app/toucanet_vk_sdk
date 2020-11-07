import '../../objects/vk_objects.dart';

class VKMessagesGetChatChatIdsResponse {
  final List<VKMessagesChat> messagesGetChatChatIdsResponse;

  const VKMessagesGetChatChatIdsResponse({
    this.messagesGetChatChatIdsResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'messages_getChat_chat_ids_response': messagesGetChatChatIdsResponse
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMessagesGetChatChatIdsResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKMessagesGetChatChatIdsResponse(
      messagesGetChatChatIdsResponse: map['messages_getChat_chat_ids_response']
          ?.map<List<VKMessagesChat>>(
            (item) => VKMessagesChat.fromMap(item),
          )
          ?.toList(),
    );
  }
}

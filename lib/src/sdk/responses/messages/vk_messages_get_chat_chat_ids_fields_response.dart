import '../../objects/vk_objects.dart';

class VKMessagesGetChatChatIdsFieldsResponse {
  final List<VKMessagesChatFull> messagesGetChatChatIdsFieldsResponse;

  const VKMessagesGetChatChatIdsFieldsResponse({
    this.messagesGetChatChatIdsFieldsResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'messages_getChat_chat_ids_fields_response':
          messagesGetChatChatIdsFieldsResponse
              ?.map(
                (item) => item?.toMap(),
              )
              ?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMessagesGetChatChatIdsFieldsResponse.fromMap(
      Map<String, dynamic> map) {
    if (map == null) return null;

    return VKMessagesGetChatChatIdsFieldsResponse(
      messagesGetChatChatIdsFieldsResponse:
          map['messages_getChat_chat_ids_fields_response']
              ?.map<List<VKMessagesChatFull>>(
                (item) => VKMessagesChatFull.fromMap(item),
              )
              ?.toList(),
    );
  }
}

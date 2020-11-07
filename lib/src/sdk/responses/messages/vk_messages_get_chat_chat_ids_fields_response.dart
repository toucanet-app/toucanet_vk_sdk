import '../../objects/vk_objects.dart';

class VKMessagesGetChatChatIdsFieldsResponse {
  final List<VKMessagesChatFull> messagesGetChatChatIdsFieldsResponse;

  const VKMessagesGetChatChatIdsFieldsResponse({
    this.messagesGetChatChatIdsFieldsResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'messages_getChat_chat_ids_fields_response':
          messagesGetChatChatIdsFieldsResponse?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMessagesGetChatChatIdsFieldsResponse.fromMap(
      Map<String, dynamic> map) {
    return VKMessagesGetChatChatIdsFieldsResponse(
      messagesGetChatChatIdsFieldsResponse:
          map['messages_getChat_chat_ids_fields_response']
              ?.map((item) => VKMessagesChatFull.fromMap(item)),
    );
  }
}

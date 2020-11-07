import '../../objects/vk_objects.dart';

class VKMessagesSetChatPhotoResponse {
  /// Service message ID.
  final int messageId;

  final VKMessagesChat chat;

  const VKMessagesSetChatPhotoResponse({
    this.messageId,
    this.chat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message_id': messageId,
      'chat': chat?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMessagesSetChatPhotoResponse.fromMap(Map<String, dynamic> map) {
    return VKMessagesSetChatPhotoResponse(
      messageId: map['message_id'] as int,
      chat: VKMessagesChat.fromMap(map['chat']),
    );
  }
}

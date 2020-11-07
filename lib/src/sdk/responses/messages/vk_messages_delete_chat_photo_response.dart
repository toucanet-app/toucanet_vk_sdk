import '../../objects/vk_objects.dart';

class VKMessagesDeleteChatPhotoResponse {
  /// Service message ID.
  final int messageId;

  final VKMessagesChat chat;

  const VKMessagesDeleteChatPhotoResponse({
    this.messageId,
    this.chat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message_id': messageId,
      'chat': chat?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMessagesDeleteChatPhotoResponse.fromMap(Map<String, dynamic> map) {
    return VKMessagesDeleteChatPhotoResponse(
      messageId: map['message_id'] as int,
      chat: VKMessagesChat.fromMap(map['chat']),
    );
  }
}

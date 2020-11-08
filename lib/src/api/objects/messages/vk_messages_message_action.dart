import 'package:meta/meta.dart';

import 'vk_messages_message_action_photo.dart';
import 'vk_messages_message_action_status.dart';

class VKMessagesMessageAction {
  /// Message ID.
  final int conversationMessageId;

  /// Email address for chat_invite_user or chat_kick_user actions.
  final String email;

  /// User or email peer ID.
  final int memberId;

  /// Message body of related message.
  final String message;

  final VKMessagesMessageActionPhoto photo;

  /// New chat title for chat_create and chat_title_update actions.
  final String text;

  final VKMessagesMessageActionStatus type;

  const VKMessagesMessageAction({
    this.conversationMessageId,
    this.email,
    this.memberId,
    this.message,
    this.photo,
    this.text,
    @required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conversation_message_id': conversationMessageId,
      'email': email,
      'member_id': memberId,
      'message': message,
      'photo': photo?.toMap(),
      'text': text,
      'type': type?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMessagesMessageAction.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKMessagesMessageAction(
      conversationMessageId: map['conversation_message_id'] as int,
      email: map['email'] as String,
      memberId: map['member_id'] as int,
      message: map['message'] as String,
      photo: VKMessagesMessageActionPhoto.fromMap(map['photo']),
      text: map['text'] as String,
      type: VKMessagesMessageActionStatus(map['type']),
    );
  }
}

import 'messages_message_action_photo.dart';
import 'messages_message_action_status.dart';
import 'package:meta/meta.dart';

class MessagesMessageAction {
  /// Message ID.
  final int conversationMessageId;

  /// Email address for chat_invite_user or chat_kick_user actions.
  final String email;

  /// User or email peer ID.
  final int memberId;

  /// Message body of related message.
  final String message;

  final MessagesMessageActionPhoto photo;

  /// New chat title for chat_create and chat_title_update actions.
  final String text;

  final MessagesMessageActionStatus type;

  const MessagesMessageAction({
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

  factory MessagesMessageAction.fromMap(Map<String, dynamic> map) {
    return MessagesMessageAction(
      conversationMessageId: map['conversation_message_id'] as int,
      email: map['email'] as String,
      memberId: map['member_id'] as int,
      message: map['message'] as String,
      photo: MessagesMessageActionPhoto.fromMap(map['photo']),
      text: map['text'] as String,
      type: MessagesMessageActionStatus(map['type']),
    );
  }
}

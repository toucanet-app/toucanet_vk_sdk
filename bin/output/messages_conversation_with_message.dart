import 'messages_conversation.dart';
import 'messages_message.dart';

class MessagesConversationWithMessage {
  final MessagesConversation conversation;

  final MessagesMessage lastMessage;

  const MessagesConversationWithMessage({
    this.conversation,
    this.lastMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conversation': conversation?.toMap(),
      'last_message': lastMessage?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory MessagesConversationWithMessage.fromMap(Map<String, dynamic> map) {
    return MessagesConversationWithMessage(
      conversation: MessagesConversation.fromMap(map['conversation']),
      lastMessage: MessagesMessage.fromMap(map['last_message']),
    );
  }
}

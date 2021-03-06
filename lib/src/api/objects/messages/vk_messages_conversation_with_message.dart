import 'vk_messages_conversation.dart';
import 'vk_messages_message.dart';

class VKMessagesConversationWithMessage {
  final VKMessagesConversation conversation;

  final VKMessagesMessage lastMessage;

  const VKMessagesConversationWithMessage({
    this.conversation,
    this.lastMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conversation': conversation?.toMap(),
      'last_message': lastMessage?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMessagesConversationWithMessage.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKMessagesConversationWithMessage(
      conversation: VKMessagesConversation.fromMap(map['conversation']),
      lastMessage: VKMessagesMessage.fromMap(map['last_message']),
    );
  }
}

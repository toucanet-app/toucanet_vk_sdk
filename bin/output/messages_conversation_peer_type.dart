/// Peer type.
class MessagesConversationPeerType {
  final String value;

  const MessagesConversationPeerType._(this.value);

  factory MessagesConversationPeerType(value) {
    if (!values.contains(value)) return null;

    return MessagesConversationPeerType._(value);
  }

  static const MessagesConversationPeerType chat = MessagesConversationPeerType._('chat');

  static const MessagesConversationPeerType email = MessagesConversationPeerType._('email');

  static const MessagesConversationPeerType user = MessagesConversationPeerType._('user');

  static const MessagesConversationPeerType group = MessagesConversationPeerType._('group');

  static List get values => const ['chat', 'email', 'user', 'group'];

  @override
  String toString() => '$value';
}

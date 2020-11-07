/// Peer type.
class VKMessagesConversationPeerType {
  final String value;

  const VKMessagesConversationPeerType._(this.value);

  factory VKMessagesConversationPeerType(value) {
    if (!values.contains(value)) return null;
    return VKMessagesConversationPeerType._(value);
  }

  static const VKMessagesConversationPeerType chat =
      VKMessagesConversationPeerType._('chat');

  static const VKMessagesConversationPeerType email =
      VKMessagesConversationPeerType._('email');

  static const VKMessagesConversationPeerType group =
      VKMessagesConversationPeerType._('group');

  static const VKMessagesConversationPeerType user =
      VKMessagesConversationPeerType._('user');

  static List get values => const ['chat', 'email', 'user', 'group'];

  @override
  String toString() => '$value';
}

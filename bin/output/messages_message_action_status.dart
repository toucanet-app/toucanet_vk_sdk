/// Action status.
class MessagesMessageActionStatus {
  final String value;

  const MessagesMessageActionStatus._(this.value);

  factory MessagesMessageActionStatus(value) {
    if (!values.contains(value)) return null;

    return MessagesMessageActionStatus._(value);
  }

  static const MessagesMessageActionStatus chatPhotoUpdate =
      MessagesMessageActionStatus._('chat_photo_update');

  static const MessagesMessageActionStatus chatPhotoRemove =
      MessagesMessageActionStatus._('chat_photo_remove');

  static const MessagesMessageActionStatus chatCreate =
      MessagesMessageActionStatus._('chat_create');

  static const MessagesMessageActionStatus chatTitleUpdate =
      MessagesMessageActionStatus._('chat_title_update');

  static const MessagesMessageActionStatus chatInviteUser =
      MessagesMessageActionStatus._('chat_invite_user');

  static const MessagesMessageActionStatus chatKickUser =
      MessagesMessageActionStatus._('chat_kick_user');

  static const MessagesMessageActionStatus chatPinMessage =
      MessagesMessageActionStatus._('chat_pin_message');

  static const MessagesMessageActionStatus chatUnpinMessage =
      MessagesMessageActionStatus._('chat_unpin_message');

  static const MessagesMessageActionStatus chatInviteUserByLink =
      MessagesMessageActionStatus._('chat_invite_user_by_link');

  static List get values => const [
        'chat_photo_update',
        'chat_photo_remove',
        'chat_create',
        'chat_title_update',
        'chat_invite_user',
        'chat_kick_user',
        'chat_pin_message',
        'chat_unpin_message',
        'chat_invite_user_by_link'
      ];

  @override
  String toString() => '$value';
}

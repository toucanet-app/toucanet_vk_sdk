/// Action status.
class VKMessagesMessageActionStatus {
  final String value;

  const VKMessagesMessageActionStatus._(this.value);

  factory VKMessagesMessageActionStatus(value) {
    if (!values.contains(value)) return null;
    return VKMessagesMessageActionStatus._(value);
  }

  static const VKMessagesMessageActionStatus chatCreate =
      VKMessagesMessageActionStatus._('chat_create');

  static const VKMessagesMessageActionStatus chatInviteUser =
      VKMessagesMessageActionStatus._('chat_invite_user');

  static const VKMessagesMessageActionStatus chatInviteUserByLink =
      VKMessagesMessageActionStatus._('chat_invite_user_by_link');

  static const VKMessagesMessageActionStatus chatKickUser =
      VKMessagesMessageActionStatus._('chat_kick_user');

  static const VKMessagesMessageActionStatus chatPhotoRemove =
      VKMessagesMessageActionStatus._('chat_photo_remove');

  static const VKMessagesMessageActionStatus chatPhotoUpdate =
      VKMessagesMessageActionStatus._('chat_photo_update');

  static const VKMessagesMessageActionStatus chatPinMessage =
      VKMessagesMessageActionStatus._('chat_pin_message');

  static const VKMessagesMessageActionStatus chatTitleUpdate =
      VKMessagesMessageActionStatus._('chat_title_update');

  static const VKMessagesMessageActionStatus chatUnpinMessage =
      VKMessagesMessageActionStatus._('chat_unpin_message');

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

/// .
class VKCallbackMessageType {
  final String value;

  const VKCallbackMessageType._(this.value);

  factory VKCallbackMessageType(value) {
    if (!values.contains(value)) return null;
    return VKCallbackMessageType._(value);
  }

  static const VKCallbackMessageType confirmation =
      VKCallbackMessageType._('confirmation');

  static const VKCallbackMessageType groupChangePhoto =
      VKCallbackMessageType._('group_change_photo');

  static const VKCallbackMessageType groupChangeSettings =
      VKCallbackMessageType._('group_change_settings');

  static const VKCallbackMessageType groupOfficersEdit =
      VKCallbackMessageType._('group_officers_edit');

  static const VKCallbackMessageType leadFormsNew =
      VKCallbackMessageType._('lead_forms_new');

  static const VKCallbackMessageType marketCommentDelete =
      VKCallbackMessageType._('market_comment_delete');

  static const VKCallbackMessageType marketCommentEdit =
      VKCallbackMessageType._('market_comment_edit');

  static const VKCallbackMessageType marketCommentRestore =
      VKCallbackMessageType._('market_comment_restore');

  static const VKCallbackMessageType messageAllow =
      VKCallbackMessageType._('message_allow');

  static const VKCallbackMessageType messageDeny =
      VKCallbackMessageType._('message_deny');

  static const VKCallbackMessageType messageRead =
      VKCallbackMessageType._('message_read');

  static const VKCallbackMessageType messageReply =
      VKCallbackMessageType._('message_reply');

  static const VKCallbackMessageType messageTypingState =
      VKCallbackMessageType._('message_typing_state');

  static const VKCallbackMessageType messagesEdit =
      VKCallbackMessageType._('messages_edit');

  static const VKCallbackMessageType photoCommentDelete =
      VKCallbackMessageType._('photo_comment_delete');

  static const VKCallbackMessageType photoCommentEdit =
      VKCallbackMessageType._('photo_comment_edit');

  static const VKCallbackMessageType photoCommentRestore =
      VKCallbackMessageType._('photo_comment_restore');

  static const VKCallbackMessageType pollVoteNew =
      VKCallbackMessageType._('poll_vote_new');

  static const VKCallbackMessageType userBlock =
      VKCallbackMessageType._('user_block');

  static const VKCallbackMessageType userUnblock =
      VKCallbackMessageType._('user_unblock');

  static const VKCallbackMessageType videoCommentDelete =
      VKCallbackMessageType._('video_comment_delete');

  static const VKCallbackMessageType videoCommentEdit =
      VKCallbackMessageType._('video_comment_edit');

  static const VKCallbackMessageType videoCommentRestore =
      VKCallbackMessageType._('video_comment_restore');

  static const VKCallbackMessageType wallReplyDelete =
      VKCallbackMessageType._('wall_reply_delete');

  static const VKCallbackMessageType wallReplyRestore =
      VKCallbackMessageType._('wall_reply_restore');

  static const VKCallbackMessageType wallRepost =
      VKCallbackMessageType._('wall_repost');

  static List get values => const [
        'confirmation',
        'group_change_photo',
        'group_change_settings',
        'group_officers_edit',
        'lead_forms_new',
        'market_comment_delete',
        'market_comment_edit',
        'market_comment_restore',
        'message_allow',
        'message_deny',
        'message_read',
        'message_reply',
        'message_typing_state',
        'messages_edit',
        'photo_comment_delete',
        'photo_comment_edit',
        'photo_comment_restore',
        'poll_vote_new',
        'user_block',
        'user_unblock',
        'video_comment_delete',
        'video_comment_edit',
        'video_comment_restore',
        'wall_reply_delete',
        'wall_reply_restore',
        'wall_repost'
      ];

  @override
  String toString() => '$value';
}

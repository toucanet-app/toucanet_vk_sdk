/// .
class CallbackMessageType {
  final String value;

  const CallbackMessageType._(this.value);

  factory CallbackMessageType(value) {
    if (!values.contains(value)) return null;

    return CallbackMessageType._(value);
  }

  static const CallbackMessageType confirmation = CallbackMessageType._('confirmation');

  static const CallbackMessageType groupChangePhoto = CallbackMessageType._('group_change_photo');

  static const CallbackMessageType groupChangeSettings = CallbackMessageType._('group_change_settings');

  static const CallbackMessageType groupOfficersEdit = CallbackMessageType._('group_officers_edit');

  static const CallbackMessageType leadFormsNew = CallbackMessageType._('lead_forms_new');

  static const CallbackMessageType marketCommentDelete = CallbackMessageType._('market_comment_delete');

  static const CallbackMessageType marketCommentEdit = CallbackMessageType._('market_comment_edit');

  static const CallbackMessageType marketCommentRestore = CallbackMessageType._('market_comment_restore');

  static const CallbackMessageType messageAllow = CallbackMessageType._('message_allow');

  static const CallbackMessageType messageDeny = CallbackMessageType._('message_deny');

  static const CallbackMessageType messageRead = CallbackMessageType._('message_read');

  static const CallbackMessageType messageReply = CallbackMessageType._('message_reply');

  static const CallbackMessageType messageTypingState = CallbackMessageType._('message_typing_state');

  static const CallbackMessageType messagesEdit = CallbackMessageType._('messages_edit');

  static const CallbackMessageType photoCommentDelete = CallbackMessageType._('photo_comment_delete');

  static const CallbackMessageType photoCommentEdit = CallbackMessageType._('photo_comment_edit');

  static const CallbackMessageType photoCommentRestore = CallbackMessageType._('photo_comment_restore');

  static const CallbackMessageType pollVoteNew = CallbackMessageType._('poll_vote_new');

  static const CallbackMessageType userBlock = CallbackMessageType._('user_block');

  static const CallbackMessageType userUnblock = CallbackMessageType._('user_unblock');

  static const CallbackMessageType videoCommentDelete = CallbackMessageType._('video_comment_delete');

  static const CallbackMessageType videoCommentEdit = CallbackMessageType._('video_comment_edit');

  static const CallbackMessageType videoCommentRestore = CallbackMessageType._('video_comment_restore');

  static const CallbackMessageType wallReplyDelete = CallbackMessageType._('wall_reply_delete');

  static const CallbackMessageType wallReplyRestore = CallbackMessageType._('wall_reply_restore');

  static const CallbackMessageType wallRepost = CallbackMessageType._('wall_repost');

  static List get values => const ['confirmation', 'group_change_photo', 'group_change_settings', 'group_officers_edit', 'lead_forms_new', 'market_comment_delete', 'market_comment_edit', 'market_comment_restore', 'message_allow', 'message_deny', 'message_read', 'message_reply', 'message_typing_state', 'messages_edit', 'photo_comment_delete', 'photo_comment_edit', 'photo_comment_restore', 'poll_vote_new', 'user_block', 'user_unblock', 'video_comment_delete', 'video_comment_edit', 'video_comment_restore', 'wall_reply_delete', 'wall_reply_restore', 'wall_repost'];

  @override
  String toString() => '$value';
}

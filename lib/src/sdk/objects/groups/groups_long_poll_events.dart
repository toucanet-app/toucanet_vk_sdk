import 'package:meta/meta.dart';

import '../base/base_bool_int.dart';

class VKGroupsLongPollEvents {
  final VKBaseBoolInt audioNew;

  final VKBaseBoolInt boardPostDelete;

  final VKBaseBoolInt boardPostEdit;

  final VKBaseBoolInt boardPostNew;

  final VKBaseBoolInt boardPostRestore;

  final VKBaseBoolInt groupChangePhoto;

  final VKBaseBoolInt groupChangeSettings;

  final VKBaseBoolInt groupJoin;

  final VKBaseBoolInt groupLeave;

  final VKBaseBoolInt groupOfficersEdit;

  final VKBaseBoolInt leadFormsNew;

  final VKBaseBoolInt marketCommentDelete;

  final VKBaseBoolInt marketCommentEdit;

  final VKBaseBoolInt marketCommentNew;

  final VKBaseBoolInt marketCommentRestore;

  final VKBaseBoolInt messageAllow;

  final VKBaseBoolInt messageDeny;

  final VKBaseBoolInt messageNew;

  final VKBaseBoolInt messageRead;

  final VKBaseBoolInt messageReply;

  final VKBaseBoolInt messageTypingState;

  final VKBaseBoolInt messageEdit;

  final VKBaseBoolInt photoCommentDelete;

  final VKBaseBoolInt photoCommentEdit;

  final VKBaseBoolInt photoCommentNew;

  final VKBaseBoolInt photoCommentRestore;

  final VKBaseBoolInt photoNew;

  final VKBaseBoolInt pollVoteNew;

  final VKBaseBoolInt userBlock;

  final VKBaseBoolInt userUnblock;

  final VKBaseBoolInt videoCommentDelete;

  final VKBaseBoolInt videoCommentEdit;

  final VKBaseBoolInt videoCommentNew;

  final VKBaseBoolInt videoCommentRestore;

  final VKBaseBoolInt videoNew;

  final VKBaseBoolInt wallPostNew;

  final VKBaseBoolInt wallReplyDelete;

  final VKBaseBoolInt wallReplyEdit;

  final VKBaseBoolInt wallReplyNew;

  final VKBaseBoolInt wallReplyRestore;

  final VKBaseBoolInt wallRepost;

  const VKGroupsLongPollEvents({
    @required this.audioNew,
    @required this.boardPostDelete,
    @required this.boardPostEdit,
    @required this.boardPostNew,
    @required this.boardPostRestore,
    @required this.groupChangePhoto,
    @required this.groupChangeSettings,
    @required this.groupJoin,
    @required this.groupLeave,
    @required this.groupOfficersEdit,
    this.leadFormsNew,
    @required this.marketCommentDelete,
    @required this.marketCommentEdit,
    @required this.marketCommentNew,
    @required this.marketCommentRestore,
    @required this.messageAllow,
    @required this.messageDeny,
    @required this.messageNew,
    @required this.messageRead,
    @required this.messageReply,
    @required this.messageTypingState,
    @required this.messageEdit,
    @required this.photoCommentDelete,
    @required this.photoCommentEdit,
    @required this.photoCommentNew,
    @required this.photoCommentRestore,
    @required this.photoNew,
    @required this.pollVoteNew,
    @required this.userBlock,
    @required this.userUnblock,
    @required this.videoCommentDelete,
    @required this.videoCommentEdit,
    @required this.videoCommentNew,
    @required this.videoCommentRestore,
    @required this.videoNew,
    @required this.wallPostNew,
    @required this.wallReplyDelete,
    @required this.wallReplyEdit,
    @required this.wallReplyNew,
    @required this.wallReplyRestore,
    @required this.wallRepost,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audio_new': audioNew?.value,
      'board_post_delete': boardPostDelete?.value,
      'board_post_edit': boardPostEdit?.value,
      'board_post_new': boardPostNew?.value,
      'board_post_restore': boardPostRestore?.value,
      'group_change_photo': groupChangePhoto?.value,
      'group_change_settings': groupChangeSettings?.value,
      'group_join': groupJoin?.value,
      'group_leave': groupLeave?.value,
      'group_officers_edit': groupOfficersEdit?.value,
      'lead_forms_new': leadFormsNew?.value,
      'market_comment_delete': marketCommentDelete?.value,
      'market_comment_edit': marketCommentEdit?.value,
      'market_comment_new': marketCommentNew?.value,
      'market_comment_restore': marketCommentRestore?.value,
      'message_allow': messageAllow?.value,
      'message_deny': messageDeny?.value,
      'message_new': messageNew?.value,
      'message_read': messageRead?.value,
      'message_reply': messageReply?.value,
      'message_typing_state': messageTypingState?.value,
      'message_edit': messageEdit?.value,
      'photo_comment_delete': photoCommentDelete?.value,
      'photo_comment_edit': photoCommentEdit?.value,
      'photo_comment_new': photoCommentNew?.value,
      'photo_comment_restore': photoCommentRestore?.value,
      'photo_new': photoNew?.value,
      'poll_vote_new': pollVoteNew?.value,
      'user_block': userBlock?.value,
      'user_unblock': userUnblock?.value,
      'video_comment_delete': videoCommentDelete?.value,
      'video_comment_edit': videoCommentEdit?.value,
      'video_comment_new': videoCommentNew?.value,
      'video_comment_restore': videoCommentRestore?.value,
      'video_new': videoNew?.value,
      'wall_post_new': wallPostNew?.value,
      'wall_reply_delete': wallReplyDelete?.value,
      'wall_reply_edit': wallReplyEdit?.value,
      'wall_reply_new': wallReplyNew?.value,
      'wall_reply_restore': wallReplyRestore?.value,
      'wall_repost': wallRepost?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKGroupsLongPollEvents.fromMap(Map<String, dynamic> map) {
    return VKGroupsLongPollEvents(
      audioNew: VKBaseBoolInt(map['audio_new']),
      boardPostDelete: VKBaseBoolInt(map['board_post_delete']),
      boardPostEdit: VKBaseBoolInt(map['board_post_edit']),
      boardPostNew: VKBaseBoolInt(map['board_post_new']),
      boardPostRestore: VKBaseBoolInt(map['board_post_restore']),
      groupChangePhoto: VKBaseBoolInt(map['group_change_photo']),
      groupChangeSettings: VKBaseBoolInt(map['group_change_settings']),
      groupJoin: VKBaseBoolInt(map['group_join']),
      groupLeave: VKBaseBoolInt(map['group_leave']),
      groupOfficersEdit: VKBaseBoolInt(map['group_officers_edit']),
      leadFormsNew: VKBaseBoolInt(map['lead_forms_new']),
      marketCommentDelete: VKBaseBoolInt(map['market_comment_delete']),
      marketCommentEdit: VKBaseBoolInt(map['market_comment_edit']),
      marketCommentNew: VKBaseBoolInt(map['market_comment_new']),
      marketCommentRestore: VKBaseBoolInt(map['market_comment_restore']),
      messageAllow: VKBaseBoolInt(map['message_allow']),
      messageDeny: VKBaseBoolInt(map['message_deny']),
      messageNew: VKBaseBoolInt(map['message_new']),
      messageRead: VKBaseBoolInt(map['message_read']),
      messageReply: VKBaseBoolInt(map['message_reply']),
      messageTypingState: VKBaseBoolInt(map['message_typing_state']),
      messageEdit: VKBaseBoolInt(map['message_edit']),
      photoCommentDelete: VKBaseBoolInt(map['photo_comment_delete']),
      photoCommentEdit: VKBaseBoolInt(map['photo_comment_edit']),
      photoCommentNew: VKBaseBoolInt(map['photo_comment_new']),
      photoCommentRestore: VKBaseBoolInt(map['photo_comment_restore']),
      photoNew: VKBaseBoolInt(map['photo_new']),
      pollVoteNew: VKBaseBoolInt(map['poll_vote_new']),
      userBlock: VKBaseBoolInt(map['user_block']),
      userUnblock: VKBaseBoolInt(map['user_unblock']),
      videoCommentDelete: VKBaseBoolInt(map['video_comment_delete']),
      videoCommentEdit: VKBaseBoolInt(map['video_comment_edit']),
      videoCommentNew: VKBaseBoolInt(map['video_comment_new']),
      videoCommentRestore: VKBaseBoolInt(map['video_comment_restore']),
      videoNew: VKBaseBoolInt(map['video_new']),
      wallPostNew: VKBaseBoolInt(map['wall_post_new']),
      wallReplyDelete: VKBaseBoolInt(map['wall_reply_delete']),
      wallReplyEdit: VKBaseBoolInt(map['wall_reply_edit']),
      wallReplyNew: VKBaseBoolInt(map['wall_reply_new']),
      wallReplyRestore: VKBaseBoolInt(map['wall_reply_restore']),
      wallRepost: VKBaseBoolInt(map['wall_repost']),
    );
  }
}

import 'base_bool_int.dart';
import 'package:meta/meta.dart';

class GroupsLongPollEvents {
  final BaseBoolInt audioNew;

  final BaseBoolInt boardPostDelete;

  final BaseBoolInt boardPostEdit;

  final BaseBoolInt boardPostNew;

  final BaseBoolInt boardPostRestore;

  final BaseBoolInt groupChangePhoto;

  final BaseBoolInt groupChangeSettings;

  final BaseBoolInt groupJoin;

  final BaseBoolInt groupLeave;

  final BaseBoolInt groupOfficersEdit;

  final BaseBoolInt leadFormsNew;

  final BaseBoolInt marketCommentDelete;

  final BaseBoolInt marketCommentEdit;

  final BaseBoolInt marketCommentNew;

  final BaseBoolInt marketCommentRestore;

  final BaseBoolInt messageAllow;

  final BaseBoolInt messageDeny;

  final BaseBoolInt messageNew;

  final BaseBoolInt messageRead;

  final BaseBoolInt messageReply;

  final BaseBoolInt messageTypingState;

  final BaseBoolInt messageEdit;

  final BaseBoolInt photoCommentDelete;

  final BaseBoolInt photoCommentEdit;

  final BaseBoolInt photoCommentNew;

  final BaseBoolInt photoCommentRestore;

  final BaseBoolInt photoNew;

  final BaseBoolInt pollVoteNew;

  final BaseBoolInt userBlock;

  final BaseBoolInt userUnblock;

  final BaseBoolInt videoCommentDelete;

  final BaseBoolInt videoCommentEdit;

  final BaseBoolInt videoCommentNew;

  final BaseBoolInt videoCommentRestore;

  final BaseBoolInt videoNew;

  final BaseBoolInt wallPostNew;

  final BaseBoolInt wallReplyDelete;

  final BaseBoolInt wallReplyEdit;

  final BaseBoolInt wallReplyNew;

  final BaseBoolInt wallReplyRestore;

  final BaseBoolInt wallRepost;

  const GroupsLongPollEvents({
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

  factory GroupsLongPollEvents.fromMap(Map<String, dynamic> map) {
    return GroupsLongPollEvents(
      audioNew: BaseBoolInt(map['audio_new']),
      boardPostDelete: BaseBoolInt(map['board_post_delete']),
      boardPostEdit: BaseBoolInt(map['board_post_edit']),
      boardPostNew: BaseBoolInt(map['board_post_new']),
      boardPostRestore: BaseBoolInt(map['board_post_restore']),
      groupChangePhoto: BaseBoolInt(map['group_change_photo']),
      groupChangeSettings: BaseBoolInt(map['group_change_settings']),
      groupJoin: BaseBoolInt(map['group_join']),
      groupLeave: BaseBoolInt(map['group_leave']),
      groupOfficersEdit: BaseBoolInt(map['group_officers_edit']),
      leadFormsNew: BaseBoolInt(map['lead_forms_new']),
      marketCommentDelete: BaseBoolInt(map['market_comment_delete']),
      marketCommentEdit: BaseBoolInt(map['market_comment_edit']),
      marketCommentNew: BaseBoolInt(map['market_comment_new']),
      marketCommentRestore: BaseBoolInt(map['market_comment_restore']),
      messageAllow: BaseBoolInt(map['message_allow']),
      messageDeny: BaseBoolInt(map['message_deny']),
      messageNew: BaseBoolInt(map['message_new']),
      messageRead: BaseBoolInt(map['message_read']),
      messageReply: BaseBoolInt(map['message_reply']),
      messageTypingState: BaseBoolInt(map['message_typing_state']),
      messageEdit: BaseBoolInt(map['message_edit']),
      photoCommentDelete: BaseBoolInt(map['photo_comment_delete']),
      photoCommentEdit: BaseBoolInt(map['photo_comment_edit']),
      photoCommentNew: BaseBoolInt(map['photo_comment_new']),
      photoCommentRestore: BaseBoolInt(map['photo_comment_restore']),
      photoNew: BaseBoolInt(map['photo_new']),
      pollVoteNew: BaseBoolInt(map['poll_vote_new']),
      userBlock: BaseBoolInt(map['user_block']),
      userUnblock: BaseBoolInt(map['user_unblock']),
      videoCommentDelete: BaseBoolInt(map['video_comment_delete']),
      videoCommentEdit: BaseBoolInt(map['video_comment_edit']),
      videoCommentNew: BaseBoolInt(map['video_comment_new']),
      videoCommentRestore: BaseBoolInt(map['video_comment_restore']),
      videoNew: BaseBoolInt(map['video_new']),
      wallPostNew: BaseBoolInt(map['wall_post_new']),
      wallReplyDelete: BaseBoolInt(map['wall_reply_delete']),
      wallReplyEdit: BaseBoolInt(map['wall_reply_edit']),
      wallReplyNew: BaseBoolInt(map['wall_reply_new']),
      wallReplyRestore: BaseBoolInt(map['wall_reply_restore']),
      wallRepost: BaseBoolInt(map['wall_repost']),
    );
  }
}

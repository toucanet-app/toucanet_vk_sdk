import 'package:meta/meta.dart';

import '../base/base_likes_info.dart';
import '../comment/comment_thread.dart';
import 'wall_comment_attachment.dart';

class VKWallWallComment {
  final List<VKWallCommentAttachment> attachments;

  /// Date when the comment has been added in Unixtime.
  final int date;

  /// Author ID.
  final int fromId;

  /// Comment ID.
  final int id;

  final VKBaseLikesInfo likes;

  /// Real position of the comment.
  final int realOffset;

  /// Replied comment ID.
  final int replyToComment;

  /// Replied user ID.
  final int replyToUser;

  /// Comment text.
  final String text;

  final VKCommentThread thread;

  final int postId;

  final int ownerId;

  final List<int> parentsStack;

  final bool deleted;

  const VKWallWallComment({
    this.attachments,
    @required this.date,
    @required this.fromId,
    @required this.id,
    this.likes,
    this.realOffset,
    this.replyToComment,
    this.replyToUser,
    @required this.text,
    this.thread,
    this.postId,
    this.ownerId,
    this.parentsStack,
    this.deleted,
  })  : assert(date >= 0),
        assert(id >= 1);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachments': attachments?.map((item) => item?.toMap()),
      'date': date,
      'from_id': fromId,
      'id': id,
      'likes': likes?.toMap(),
      'real_offset': realOffset,
      'reply_to_comment': replyToComment,
      'reply_to_user': replyToUser,
      'text': text,
      'thread': thread?.toMap(),
      'post_id': postId,
      'owner_id': ownerId,
      'parents_stack': parentsStack,
      'deleted': deleted,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKWallWallComment.fromMap(Map<String, dynamic> map) {
    return VKWallWallComment(
      attachments: map['attachments']
          ?.map((item) => VKWallCommentAttachment.fromMap(item)),
      date: map['date'] as int,
      fromId: map['from_id'] as int,
      id: map['id'] as int,
      likes: VKBaseLikesInfo.fromMap(map['likes']),
      realOffset: map['real_offset'] as int,
      replyToComment: map['reply_to_comment'] as int,
      replyToUser: map['reply_to_user'] as int,
      text: map['text'] as String,
      thread: VKCommentThread.fromMap(map['thread']),
      postId: map['post_id'] as int,
      ownerId: map['owner_id'] as int,
      parentsStack: map['parents_stack'] as List<int>,
      deleted: map['deleted'] as bool,
    );
  }
}

import 'package:meta/meta.dart';

import '../base/vk_base_likes_info.dart';
import '../comment/vk_comment_thread.dart';
import '../wall/vk_wall_comment_attachment.dart';

class VKPhotosCommentXtrPid {
  final List<VKWallCommentAttachment> attachments;

  /// Date when the comment has been added in Unixtime.
  final int date;

  /// Author ID.
  final int fromId;

  /// Comment ID.
  final int id;

  final VKBaseLikesInfo likes;

  /// Photo ID.
  final int pid;

  /// Replied comment ID.
  final int replyToComment;

  /// Replied user ID.
  final int replyToUser;

  /// Comment text.
  final String text;

  final List<int> parentsStack;

  final VKCommentThread thread;

  const VKPhotosCommentXtrPid({
    this.attachments,
    @required this.date,
    @required this.fromId,
    @required this.id,
    this.likes,
    @required this.pid,
    this.replyToComment,
    this.replyToUser,
    @required this.text,
    this.parentsStack,
    this.thread,
  })  : assert(date >= 0),
        assert(id >= 1),
        assert(pid >= 1);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachments': attachments?.map((item) => item?.toMap())?.toList(),
      'date': date,
      'from_id': fromId,
      'id': id,
      'likes': likes?.toMap(),
      'pid': pid,
      'reply_to_comment': replyToComment,
      'reply_to_user': replyToUser,
      'text': text,
      'parents_stack': parentsStack,
      'thread': thread?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPhotosCommentXtrPid.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKPhotosCommentXtrPid(
      attachments: map['attachments']
          ?.map((item) => VKWallCommentAttachment.fromMap(item))
          ?.toList(),
      date: map['date'] as int,
      fromId: map['from_id'] as int,
      id: map['id'] as int,
      likes: VKBaseLikesInfo.fromMap(map['likes']),
      pid: map['pid'] as int,
      replyToComment: map['reply_to_comment'] as int,
      replyToUser: map['reply_to_user'] as int,
      text: map['text'] as String,
      parentsStack: map['parents_stack'] as List<int>,
      thread: VKCommentThread.fromMap(map['thread']),
    );
  }
}

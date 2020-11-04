import 'wall_comment_attachment.dart';
import 'base_bool_int.dart';
import 'base_likes_info.dart';
import 'package:meta/meta.dart';

class BoardTopicComment {
  final List<WallCommentAttachment> attachments;

  /// Date when the comment has been added in Unixtime.
  final int date;

  /// Author ID.
  final int fromId;

  /// Comment ID.
  final int id;

  /// Real position of the comment.
  final int realOffset;

  /// Comment text.
  final String text;

  /// Information whether current user can edit the comment.
  final BaseBoolInt canEdit;

  final BaseLikesInfo likes;

  const BoardTopicComment({
    this.attachments,
    @required this.date,
    @required this.fromId,
    @required this.id,
    this.realOffset,
    @required this.text,
    this.canEdit,
    this.likes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachments': attachments?.map((item) => item?.toMap()),
      'date': date,
      'from_id': fromId,
      'id': id,
      'real_offset': realOffset,
      'text': text,
      'can_edit': canEdit?.value,
      'likes': likes?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory BoardTopicComment.fromMap(Map<String, dynamic> map) {
    return BoardTopicComment(
      attachments: map['attachments']?.map((item) => WallCommentAttachment.fromMap(item)),
      date: map['date'] as int,
      fromId: map['from_id'] as int,
      id: map['id'] as int,
      realOffset: map['real_offset'] as int,
      text: map['text'] as String,
      canEdit: BaseBoolInt(map['can_edit']),
      likes: BaseLikesInfo.fromMap(map['likes']),
    );
  }
}

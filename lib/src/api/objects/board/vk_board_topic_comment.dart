import 'package:meta/meta.dart';

import '../base/vk_base_bool_int.dart';
import '../base/vk_base_likes_info.dart';
import '../wall/vk_wall_comment_attachment.dart';

class VKBoardTopicComment {
  final List<VKWallCommentAttachment> attachments;

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
  final VKBaseBoolInt canEdit;

  final VKBaseLikesInfo likes;

  const VKBoardTopicComment({
    this.attachments,
    @required this.date,
    @required this.fromId,
    @required this.id,
    this.realOffset,
    @required this.text,
    this.canEdit,
    this.likes,
  })  : assert(date >= 0),
        assert(id >= 1);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachments': attachments
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
      'date': date,
      'from_id': fromId,
      'id': id,
      'real_offset': realOffset,
      'text': text,
      'can_edit': canEdit?.value,
      'likes': likes?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKBoardTopicComment.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKBoardTopicComment(
      attachments: map['attachments']
          ?.map<VKWallCommentAttachment>(
            (item) => VKWallCommentAttachment.fromMap(item),
          )
          ?.toList(),
      date: map['date'] as int,
      fromId: map['from_id'] as int,
      id: map['id'] as int,
      realOffset: map['real_offset'] as int,
      text: map['text'] as String,
      canEdit: VKBaseBoolInt(map['can_edit']),
      likes: VKBaseLikesInfo.fromMap(map['likes']),
    );
  }
}

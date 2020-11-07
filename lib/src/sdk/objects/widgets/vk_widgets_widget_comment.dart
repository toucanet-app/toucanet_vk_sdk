import 'package:meta/meta.dart';

import '../base/vk_base_bool_int.dart';
import '../base/vk_base_likes_info.dart';
import '../base/vk_base_reposts_info.dart';
import '../users/vk_users_user_full.dart';
import '../wall/vk_wall_comment_attachment.dart';
import '../wall/vk_wall_post_source.dart';
import 'vk_widgets_comment_media.dart';
import 'vk_widgets_comment_replies.dart';

class VKWidgetsWidgetComment {
  final List<VKWallCommentAttachment> attachments;

  /// Information whether current user can delete the comment.
  final VKBaseBoolInt canDelete;

  final VKWidgetsCommentReplies comments;

  /// Date when the comment has been added in Unixtime.
  final int date;

  /// Comment author ID.
  final int fromId;

  /// Comment ID.
  final int id;

  final VKBaseLikesInfo likes;

  final VKWidgetsCommentMedia media;

  final VKWallPostSource postSource;

  /// Post type.
  final int postType;

  final VKBaseRepostsInfo reposts;

  /// Comment text.
  final String text;

  /// Wall owner.
  final int toId;

  final VKUsersUserFull user;

  const VKWidgetsWidgetComment({
    this.attachments,
    this.canDelete,
    this.comments,
    @required this.date,
    @required this.fromId,
    @required this.id,
    this.likes,
    this.media,
    this.postSource,
    @required this.postType,
    this.reposts,
    @required this.text,
    @required this.toId,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachments': attachments
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
      'can_delete': canDelete?.value,
      'comments': comments?.toMap(),
      'date': date,
      'from_id': fromId,
      'id': id,
      'likes': likes?.toMap(),
      'media': media?.toMap(),
      'post_source': postSource?.toMap(),
      'post_type': postType,
      'reposts': reposts?.toMap(),
      'text': text,
      'to_id': toId,
      'user': user?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKWidgetsWidgetComment.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKWidgetsWidgetComment(
      attachments: map['attachments']
          ?.map<VKWallCommentAttachment>(
            (item) => VKWallCommentAttachment.fromMap(item),
          )
          ?.toList(),
      canDelete: VKBaseBoolInt(map['can_delete']),
      comments: VKWidgetsCommentReplies.fromMap(map['comments']),
      date: map['date'] as int,
      fromId: map['from_id'] as int,
      id: map['id'] as int,
      likes: VKBaseLikesInfo.fromMap(map['likes']),
      media: VKWidgetsCommentMedia.fromMap(map['media']),
      postSource: VKWallPostSource.fromMap(map['post_source']),
      postType: map['post_type'] as int,
      reposts: VKBaseRepostsInfo.fromMap(map['reposts']),
      text: map['text'] as String,
      toId: map['to_id'] as int,
      user: VKUsersUserFull.fromMap(map['user']),
    );
  }
}

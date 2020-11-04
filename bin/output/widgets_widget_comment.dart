import 'wall_comment_attachment.dart';
import 'base_bool_int.dart';
import 'widgets_comment_replies.dart';
import 'base_likes_info.dart';
import 'widgets_comment_media.dart';
import 'wall_post_source.dart';
import 'base_reposts_info.dart';
import 'users_user_full.dart';
import 'package:meta/meta.dart';

class WidgetsWidgetComment {
  final List<WallCommentAttachment> attachments;

  /// Information whether current user can delete the comment.
  final BaseBoolInt canDelete;

  final WidgetsCommentReplies comments;

  /// Date when the comment has been added in Unixtime.
  final int date;

  /// Comment author ID.
  final int fromId;

  /// Comment ID.
  final int id;

  final BaseLikesInfo likes;

  final WidgetsCommentMedia media;

  final WallPostSource postSource;

  /// Post type.
  final int postType;

  final BaseRepostsInfo reposts;

  /// Comment text.
  final String text;

  /// Wall owner.
  final int toId;

  final UsersUserFull user;

  const WidgetsWidgetComment({
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
      'attachments': attachments?.map((item) => item?.toMap()),
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

  factory WidgetsWidgetComment.fromMap(Map<String, dynamic> map) {
    return WidgetsWidgetComment(
      attachments: map['attachments']
          ?.map((item) => WallCommentAttachment.fromMap(item)),
      canDelete: BaseBoolInt(map['can_delete']),
      comments: WidgetsCommentReplies.fromMap(map['comments']),
      date: map['date'] as int,
      fromId: map['from_id'] as int,
      id: map['id'] as int,
      likes: BaseLikesInfo.fromMap(map['likes']),
      media: WidgetsCommentMedia.fromMap(map['media']),
      postSource: WallPostSource.fromMap(map['post_source']),
      postType: map['post_type'] as int,
      reposts: BaseRepostsInfo.fromMap(map['reposts']),
      text: map['text'] as String,
      toId: map['to_id'] as int,
      user: UsersUserFull.fromMap(map['user']),
    );
  }
}

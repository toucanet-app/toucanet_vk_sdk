import 'wall_wallpost_attachment.dart';
import 'base_comments_info.dart';
import 'wall_geo.dart';
import 'base_likes_info.dart';
import 'wall_post_source.dart';
import 'wall_post_type.dart';
import 'base_reposts_info.dart';

class WallWallpostToId {
  final List<WallWallpostAttachment> attachments;

  final BaseCommentsInfo comments;

  /// ID of the source post owner.
  final int copyOwnerId;

  /// ID of the source post.
  final int copyPostId;

  /// Date of publishing in Unixtime.
  final int date;

  /// Post author ID.
  final int fromId;

  final WallGeo geo;

  /// Post ID.
  final int id;

  /// Information whether the post in favorites list.
  final bool isFavorite;

  final BaseLikesInfo likes;

  /// wall post ID (if comment).
  final int postId;

  final WallPostSource postSource;

  final WallPostType postType;

  final BaseRepostsInfo reposts;

  /// Post signer ID.
  final int signerId;

  /// Post text.
  final String text;

  /// Wall owner's ID.
  final int toId;

  const WallWallpostToId({
    this.attachments,
    this.comments,
    this.copyOwnerId,
    this.copyPostId,
    this.date,
    this.fromId,
    this.geo,
    this.id,
    this.isFavorite,
    this.likes,
    this.postId,
    this.postSource,
    this.postType,
    this.reposts,
    this.signerId,
    this.text,
    this.toId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachments': attachments?.map((item) => item?.toMap()),
      'comments': comments?.toMap(),
      'copy_owner_id': copyOwnerId,
      'copy_post_id': copyPostId,
      'date': date,
      'from_id': fromId,
      'geo': geo?.toMap(),
      'id': id,
      'is_favorite': isFavorite,
      'likes': likes?.toMap(),
      'post_id': postId,
      'post_source': postSource?.toMap(),
      'post_type': postType?.value,
      'reposts': reposts?.toMap(),
      'signer_id': signerId,
      'text': text,
      'to_id': toId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory WallWallpostToId.fromMap(Map<String, dynamic> map) {
    return WallWallpostToId(
      attachments: map['attachments']
          ?.map((item) => WallWallpostAttachment.fromMap(item)),
      comments: BaseCommentsInfo.fromMap(map['comments']),
      copyOwnerId: map['copy_owner_id'] as int,
      copyPostId: map['copy_post_id'] as int,
      date: map['date'] as int,
      fromId: map['from_id'] as int,
      geo: WallGeo.fromMap(map['geo']),
      id: map['id'] as int,
      isFavorite: map['is_favorite'] as bool,
      likes: BaseLikesInfo.fromMap(map['likes']),
      postId: map['post_id'] as int,
      postSource: WallPostSource.fromMap(map['post_source']),
      postType: WallPostType(map['post_type']),
      reposts: BaseRepostsInfo.fromMap(map['reposts']),
      signerId: map['signer_id'] as int,
      text: map['text'] as String,
      toId: map['to_id'] as int,
    );
  }
}

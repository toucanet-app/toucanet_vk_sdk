import '../base/vk_base_comments_info.dart';
import '../base/vk_base_likes_info.dart';
import '../base/vk_base_reposts_info.dart';
import 'vk_wall_geo.dart';
import 'vk_wall_post_source.dart';
import 'vk_wall_post_type.dart';
import 'vk_wall_wallpost_attachment.dart';

class VKWallWallpostToId {
  final List<VKWallWallpostAttachment> attachments;

  final VKBaseCommentsInfo comments;

  /// ID of the source post owner.
  final int copyOwnerId;

  /// ID of the source post.
  final int copyPostId;

  /// Date of publishing in Unixtime.
  final int date;

  /// Post author ID.
  final int fromId;

  final VKWallGeo geo;

  /// Post ID.
  final int id;

  /// Information whether the post in favorites list.
  final bool isFavorite;

  final VKBaseLikesInfo likes;

  /// wall post ID (if comment).
  final int postId;

  final VKWallPostSource postSource;

  final VKWallPostType postType;

  final VKBaseRepostsInfo reposts;

  /// Post signer ID.
  final int signerId;

  /// Post text.
  final String text;

  /// Wall owner's ID.
  final int toId;

  const VKWallWallpostToId({
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
      'attachments': attachments?.map((item) => item?.toMap())?.toList(),
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

  factory VKWallWallpostToId.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKWallWallpostToId(
      attachments: map['attachments']
          ?.map((item) => VKWallWallpostAttachment.fromMap(item))
          ?.toList(),
      comments: VKBaseCommentsInfo.fromMap(map['comments']),
      copyOwnerId: map['copy_owner_id'] as int,
      copyPostId: map['copy_post_id'] as int,
      date: map['date'] as int,
      fromId: map['from_id'] as int,
      geo: VKWallGeo.fromMap(map['geo']),
      id: map['id'] as int,
      isFavorite: map['is_favorite'] as bool,
      likes: VKBaseLikesInfo.fromMap(map['likes']),
      postId: map['post_id'] as int,
      postSource: VKWallPostSource.fromMap(map['post_source']),
      postType: VKWallPostType(map['post_type']),
      reposts: VKBaseRepostsInfo.fromMap(map['reposts']),
      signerId: map['signer_id'] as int,
      text: map['text'] as String,
      toId: map['to_id'] as int,
    );
  }
}

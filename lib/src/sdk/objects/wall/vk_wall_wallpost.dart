import '../base/vk_base_likes_info.dart';
import '../base/vk_base_reposts_info.dart';
import 'vk_wall_geo.dart';
import 'vk_wall_post_copyright.dart';
import 'vk_wall_post_source.dart';
import 'vk_wall_post_type.dart';
import 'vk_wall_views.dart';
import 'vk_wall_wallpost_attachment.dart';

class VKWallWallpost {
  /// Access key to private object.
  final String accessKey;

  final List<VKWallWallpostAttachment> attachments;

  /// Information about the source of the post.
  final VKWallPostCopyright copyright;

  /// Date of publishing in Unixtime.
  final int date;

  /// Date of editing in Unixtime.
  final int edited;

  /// Post author ID.
  final int fromId;

  final VKWallGeo geo;

  /// Post ID.
  final int id;

  /// Is post archived, only for post owners.
  final bool isArchived;

  /// Information whether the post in favorites list.
  final bool isFavorite;

  /// Count of likes.
  final VKBaseLikesInfo likes;

  /// Wall owner's ID.
  final int ownerId;

  final VKWallPostSource postSource;

  final VKWallPostType postType;

  final VKBaseRepostsInfo reposts;

  /// Post signer ID.
  final int signerId;

  /// Post text.
  final String text;

  /// Count of views.
  final VKWallViews views;

  const VKWallWallpost({
    this.accessKey,
    this.attachments,
    this.copyright,
    this.date,
    this.edited,
    this.fromId,
    this.geo,
    this.id,
    this.isArchived,
    this.isFavorite,
    this.likes,
    this.ownerId,
    this.postSource,
    this.postType,
    this.reposts,
    this.signerId,
    this.text,
    this.views,
  }) : assert(edited == null || edited >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access_key': accessKey,
      'attachments': attachments?.map((item) => item?.toMap())?.toList(),
      'copyright': copyright?.toMap(),
      'date': date,
      'edited': edited,
      'from_id': fromId,
      'geo': geo?.toMap(),
      'id': id,
      'is_archived': isArchived,
      'is_favorite': isFavorite,
      'likes': likes?.toMap(),
      'owner_id': ownerId,
      'post_source': postSource?.toMap(),
      'post_type': postType?.value,
      'reposts': reposts?.toMap(),
      'signer_id': signerId,
      'text': text,
      'views': views?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKWallWallpost.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKWallWallpost(
      accessKey: map['access_key'] as String,
      attachments: map['attachments']
          ?.map((item) => VKWallWallpostAttachment.fromMap(item))
          ?.toList(),
      copyright: VKWallPostCopyright.fromMap(map['copyright']),
      date: map['date'] as int,
      edited: map['edited'] as int,
      fromId: map['from_id'] as int,
      geo: VKWallGeo.fromMap(map['geo']),
      id: map['id'] as int,
      isArchived: map['is_archived'] as bool,
      isFavorite: map['is_favorite'] as bool,
      likes: VKBaseLikesInfo.fromMap(map['likes']),
      ownerId: map['owner_id'] as int,
      postSource: VKWallPostSource.fromMap(map['post_source']),
      postType: VKWallPostType(map['post_type']),
      reposts: VKBaseRepostsInfo.fromMap(map['reposts']),
      signerId: map['signer_id'] as int,
      text: map['text'] as String,
      views: VKWallViews.fromMap(map['views']),
    );
  }
}

import 'wall_wallpost_attachment.dart';
import 'wall_post_copyright.dart';
import 'wall_geo.dart';
import 'base_likes_info.dart';
import 'wall_post_source.dart';
import 'wall_post_type.dart';
import 'base_reposts_info.dart';
import 'wall_views.dart';

class WallWallpost {
  /// Access key to private object.
  final String accessKey;

  final List<WallWallpostAttachment> attachments;

  /// Information about the source of the post.
  final WallPostCopyright copyright;

  /// Date of publishing in Unixtime.
  final int date;

  /// Date of editing in Unixtime.
  final int edited;

  /// Post author ID.
  final int fromId;

  final WallGeo geo;

  /// Post ID.
  final int id;

  /// Is post archived, only for post owners.
  final bool isArchived;

  /// Information whether the post in favorites list.
  final bool isFavorite;

  /// Count of likes.
  final BaseLikesInfo likes;

  /// Wall owner's ID.
  final int ownerId;

  final WallPostSource postSource;

  final WallPostType postType;

  final BaseRepostsInfo reposts;

  /// Post signer ID.
  final int signerId;

  /// Post text.
  final String text;

  /// Count of views.
  final WallViews views;

  const WallWallpost({
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
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access_key': accessKey,
      'attachments': attachments?.map((item) => item?.toMap()),
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

  factory WallWallpost.fromMap(Map<String, dynamic> map) {
    return WallWallpost(
      accessKey: map['access_key'] as String,
      attachments: map['attachments']
          ?.map((item) => WallWallpostAttachment.fromMap(item)),
      copyright: WallPostCopyright.fromMap(map['copyright']),
      date: map['date'] as int,
      edited: map['edited'] as int,
      fromId: map['from_id'] as int,
      geo: WallGeo.fromMap(map['geo']),
      id: map['id'] as int,
      isArchived: map['is_archived'] as bool,
      isFavorite: map['is_favorite'] as bool,
      likes: BaseLikesInfo.fromMap(map['likes']),
      ownerId: map['owner_id'] as int,
      postSource: WallPostSource.fromMap(map['post_source']),
      postType: WallPostType(map['post_type']),
      reposts: BaseRepostsInfo.fromMap(map['reposts']),
      signerId: map['signer_id'] as int,
      text: map['text'] as String,
      views: WallViews.fromMap(map['views']),
    );
  }
}

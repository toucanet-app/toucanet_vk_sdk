import 'wall_wallpost_attachment.dart';
import 'wall_post_copyright.dart';
import 'wall_geo.dart';
import 'base_likes_info.dart';
import 'wall_post_source.dart';
import 'wall_post_type.dart';
import 'base_reposts_info.dart';
import 'wall_views.dart';
import 'wall_wallpost.dart';
import 'base_bool_int.dart';
import 'base_comments_info.dart';

class WallWallpostFull {
  /// Index of current carousel element.
  final int carouselOffset;

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

  final List<WallWallpost> copyHistory;

  /// Information whether current user can edit the post.
  final BaseBoolInt canEdit;

  /// Post creator ID (if post still can be edited).
  final int createdBy;

  /// Information whether current user can delete the post.
  final BaseBoolInt canDelete;

  /// Information whether current user can pin the post.
  final BaseBoolInt canPin;

  /// Information whether the post is pinned.
  final int isPinned;

  final BaseCommentsInfo comments;

  /// Information whether the post is marked as ads.
  final BaseBoolInt markedAsAds;

  /// Preview length control parameter.
  final double shortTextRate;

  const WallWallpostFull({
    this.carouselOffset,
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
    this.copyHistory,
    this.canEdit,
    this.createdBy,
    this.canDelete,
    this.canPin,
    this.isPinned,
    this.comments,
    this.markedAsAds,
    this.shortTextRate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'carousel_offset': carouselOffset,
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
      'copy_history': copyHistory?.map((item) => item?.toMap()),
      'can_edit': canEdit?.value,
      'created_by': createdBy,
      'can_delete': canDelete?.value,
      'can_pin': canPin?.value,
      'is_pinned': isPinned,
      'comments': comments?.toMap(),
      'marked_as_ads': markedAsAds?.value,
      'short_text_rate': shortTextRate,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory WallWallpostFull.fromMap(Map<String, dynamic> map) {
    return WallWallpostFull(
      carouselOffset: map['carousel_offset'] as int,
      accessKey: map['access_key'] as String,
      attachments: map['attachments']?.map((item) => WallWallpostAttachment.fromMap(item)),
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
      copyHistory: map['copy_history']?.map((item) => WallWallpost.fromMap(item)),
      canEdit: BaseBoolInt(map['can_edit']),
      createdBy: map['created_by'] as int,
      canDelete: BaseBoolInt(map['can_delete']),
      canPin: BaseBoolInt(map['can_pin']),
      isPinned: map['is_pinned'] as int,
      comments: BaseCommentsInfo.fromMap(map['comments']),
      markedAsAds: BaseBoolInt(map['marked_as_ads']),
      shortTextRate: map['short_text_rate'] as double,
    );
  }
}

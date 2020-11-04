import 'newsfeed_newsfeed_item_type.dart';
import 'newsfeed_event_activity.dart';
import 'wall_wallpost_attachment.dart';
import 'base_comments_info.dart';
import 'wall_wallpost.dart';
import 'newsfeed_item_wallpost_feedback.dart';
import 'base_geo.dart';
import 'base_likes_info.dart';
import 'base_bool_int.dart';
import 'wall_post_source.dart';
import 'newsfeed_item_wallpost_type.dart';
import 'base_reposts_info.dart';
import 'wall_views.dart';
import 'package:meta/meta.dart';

class NewsfeedItemWallpost {
  /// Index of current carousel element.
  final int carouselOffset;

  final NewsfeedNewsfeedItemType type;

  /// Item source ID.
  final int sourceId;

  /// Date when item has been added in Unixtime.
  final int date;

  final NewsfeedEventActivity activity;

  final List<WallWallpostAttachment> attachments;

  final BaseCommentsInfo comments;

  final List<WallWallpost> copyHistory;

  final NewsfeedItemWallpostFeedback feedback;

  final BaseGeo geo;

  /// Information whether the post in favorites list.
  final bool isFavorite;

  final BaseLikesInfo likes;

  /// Information whether the post is marked as ads.
  final BaseBoolInt markedAsAds;

  /// Post ID.
  final int postId;

  final WallPostSource postSource;

  final NewsfeedItemWallpostType postType;

  final BaseRepostsInfo reposts;

  /// Post signer ID.
  final int signerId;

  /// Post text.
  final String text;

  /// Count of views.
  final WallViews views;

  /// Preview length control parameter.
  final double shortTextRate;

  const NewsfeedItemWallpost({
    this.carouselOffset,
    @required this.type,
    @required this.sourceId,
    @required this.date,
    this.activity,
    this.attachments,
    this.comments,
    this.copyHistory,
    this.feedback,
    this.geo,
    this.isFavorite,
    this.likes,
    this.markedAsAds,
    this.postId,
    this.postSource,
    this.postType,
    this.reposts,
    this.signerId,
    this.text,
    this.views,
    this.shortTextRate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'carousel_offset': carouselOffset,
      'type': type?.value,
      'source_id': sourceId,
      'date': date,
      'activity': activity?.toMap(),
      'attachments': attachments?.map((item) => item?.toMap()),
      'comments': comments?.toMap(),
      'copy_history': copyHistory?.map((item) => item?.toMap()),
      'feedback': feedback?.toMap(),
      'geo': geo?.toMap(),
      'is_favorite': isFavorite,
      'likes': likes?.toMap(),
      'marked_as_ads': markedAsAds?.value,
      'post_id': postId,
      'post_source': postSource?.toMap(),
      'post_type': postType?.value,
      'reposts': reposts?.toMap(),
      'signer_id': signerId,
      'text': text,
      'views': views?.toMap(),
      'short_text_rate': shortTextRate,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory NewsfeedItemWallpost.fromMap(Map<String, dynamic> map) {
    return NewsfeedItemWallpost(
      carouselOffset: map['carousel_offset'] as int,
      type: NewsfeedNewsfeedItemType(map['type']),
      sourceId: map['source_id'] as int,
      date: map['date'] as int,
      activity: NewsfeedEventActivity.fromMap(map['activity']),
      attachments: map['attachments']?.map((item) => WallWallpostAttachment.fromMap(item)),
      comments: BaseCommentsInfo.fromMap(map['comments']),
      copyHistory: map['copy_history']?.map((item) => WallWallpost.fromMap(item)),
      feedback: NewsfeedItemWallpostFeedback.fromMap(map['feedback']),
      geo: BaseGeo.fromMap(map['geo']),
      isFavorite: map['is_favorite'] as bool,
      likes: BaseLikesInfo.fromMap(map['likes']),
      markedAsAds: BaseBoolInt(map['marked_as_ads']),
      postId: map['post_id'] as int,
      postSource: WallPostSource.fromMap(map['post_source']),
      postType: NewsfeedItemWallpostType(map['post_type']),
      reposts: BaseRepostsInfo.fromMap(map['reposts']),
      signerId: map['signer_id'] as int,
      text: map['text'] as String,
      views: WallViews.fromMap(map['views']),
      shortTextRate: map['short_text_rate'] as double,
    );
  }
}

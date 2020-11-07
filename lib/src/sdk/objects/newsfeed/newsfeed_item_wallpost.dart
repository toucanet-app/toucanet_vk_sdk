import 'package:meta/meta.dart';

import '../base/base_bool_int.dart';
import '../base/base_comments_info.dart';
import '../base/base_geo.dart';
import '../base/base_likes_info.dart';
import '../base/base_reposts_info.dart';
import '../wall/wall_post_source.dart';
import '../wall/wall_views.dart';
import '../wall/wall_wallpost.dart';
import '../wall/wall_wallpost_attachment.dart';
import 'newsfeed_event_activity.dart';
import 'newsfeed_item_wallpost_feedback.dart';
import 'newsfeed_item_wallpost_type.dart';
import 'newsfeed_newsfeed_item_type.dart';

class VKNewsfeedItemWallpost {
  /// Index of current carousel element.
  final int carouselOffset;

  final VKNewsfeedNewsfeedItemType type;

  /// Item source ID.
  final int sourceId;

  /// Date when item has been added in Unixtime.
  final int date;

  final VKNewsfeedEventActivity activity;

  final List<VKWallWallpostAttachment> attachments;

  final VKBaseCommentsInfo comments;

  final List<VKWallWallpost> copyHistory;

  final VKNewsfeedItemWallpostFeedback feedback;

  final VKBaseGeo geo;

  /// Information whether the post in favorites list.
  final bool isFavorite;

  final VKBaseLikesInfo likes;

  /// Information whether the post is marked as ads.
  final VKBaseBoolInt markedAsAds;

  /// Post ID.
  final int postId;

  final VKWallPostSource postSource;

  final VKNewsfeedItemWallpostType postType;

  final VKBaseRepostsInfo reposts;

  /// Post signer ID.
  final int signerId;

  /// Post text.
  final String text;

  /// Count of views.
  final VKWallViews views;

  /// Preview length control parameter.
  final double shortTextRate;

  const VKNewsfeedItemWallpost({
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
  }) : assert(carouselOffset >= 0);

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

  factory VKNewsfeedItemWallpost.fromMap(Map<String, dynamic> map) {
    return VKNewsfeedItemWallpost(
      carouselOffset: map['carousel_offset'] as int,
      type: VKNewsfeedNewsfeedItemType(map['type']),
      sourceId: map['source_id'] as int,
      date: map['date'] as int,
      activity: VKNewsfeedEventActivity.fromMap(map['activity']),
      attachments: map['attachments']
          ?.map((item) => VKWallWallpostAttachment.fromMap(item)),
      comments: VKBaseCommentsInfo.fromMap(map['comments']),
      copyHistory:
          map['copy_history']?.map((item) => VKWallWallpost.fromMap(item)),
      feedback: VKNewsfeedItemWallpostFeedback.fromMap(map['feedback']),
      geo: VKBaseGeo.fromMap(map['geo']),
      isFavorite: map['is_favorite'] as bool,
      likes: VKBaseLikesInfo.fromMap(map['likes']),
      markedAsAds: VKBaseBoolInt(map['marked_as_ads']),
      postId: map['post_id'] as int,
      postSource: VKWallPostSource.fromMap(map['post_source']),
      postType: VKNewsfeedItemWallpostType(map['post_type']),
      reposts: VKBaseRepostsInfo.fromMap(map['reposts']),
      signerId: map['signer_id'] as int,
      text: map['text'] as String,
      views: VKWallViews.fromMap(map['views']),
      shortTextRate: map['short_text_rate'] as double,
    );
  }
}

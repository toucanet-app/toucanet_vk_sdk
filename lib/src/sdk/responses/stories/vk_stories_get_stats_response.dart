import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKStoriesGetStatsResponse {
  final VKStoriesStoryStatsStat answer;

  final VKStoriesStoryStatsStat bans;

  final VKStoriesStoryStatsStat openLink;

  final VKStoriesStoryStatsStat replies;

  final VKStoriesStoryStatsStat shares;

  final VKStoriesStoryStatsStat subscribers;

  final VKStoriesStoryStatsStat views;

  final VKStoriesStoryStatsStat likes;

  const VKStoriesGetStatsResponse({
    @required this.answer,
    @required this.bans,
    @required this.openLink,
    @required this.replies,
    @required this.shares,
    @required this.subscribers,
    @required this.views,
    @required this.likes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'answer': answer?.toMap(),
      'bans': bans?.toMap(),
      'open_link': openLink?.toMap(),
      'replies': replies?.toMap(),
      'shares': shares?.toMap(),
      'subscribers': subscribers?.toMap(),
      'views': views?.toMap(),
      'likes': likes?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKStoriesGetStatsResponse.fromMap(Map<String, dynamic> map) {
    return VKStoriesGetStatsResponse(
      answer: VKStoriesStoryStatsStat.fromMap(map['answer']),
      bans: VKStoriesStoryStatsStat.fromMap(map['bans']),
      openLink: VKStoriesStoryStatsStat.fromMap(map['open_link']),
      replies: VKStoriesStoryStatsStat.fromMap(map['replies']),
      shares: VKStoriesStoryStatsStat.fromMap(map['shares']),
      subscribers: VKStoriesStoryStatsStat.fromMap(map['subscribers']),
      views: VKStoriesStoryStatsStat.fromMap(map['views']),
      likes: VKStoriesStoryStatsStat.fromMap(map['likes']),
    );
  }
}

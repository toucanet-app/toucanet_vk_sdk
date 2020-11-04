import 'stories_story_stats_stat.dart';
import 'package:meta/meta.dart';

class StoriesStoryStats {
  final StoriesStoryStatsStat answer;

  final StoriesStoryStatsStat bans;

  final StoriesStoryStatsStat openLink;

  final StoriesStoryStatsStat replies;

  final StoriesStoryStatsStat shares;

  final StoriesStoryStatsStat subscribers;

  final StoriesStoryStatsStat views;

  final StoriesStoryStatsStat likes;

  const StoriesStoryStats({
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

  factory StoriesStoryStats.fromMap(Map<String, dynamic> map) {
    return StoriesStoryStats(
      answer: StoriesStoryStatsStat.fromMap(map['answer']),
      bans: StoriesStoryStatsStat.fromMap(map['bans']),
      openLink: StoriesStoryStatsStat.fromMap(map['open_link']),
      replies: StoriesStoryStatsStat.fromMap(map['replies']),
      shares: StoriesStoryStatsStat.fromMap(map['shares']),
      subscribers: StoriesStoryStatsStat.fromMap(map['subscribers']),
      views: StoriesStoryStatsStat.fromMap(map['views']),
      likes: StoriesStoryStatsStat.fromMap(map['likes']),
    );
  }
}

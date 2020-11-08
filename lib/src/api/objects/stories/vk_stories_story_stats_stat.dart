import 'package:meta/meta.dart';

import 'vk_stories_story_stats_state.dart';

class VKStoriesStoryStatsStat {
  /// Stat value.
  final int count;

  final VKStoriesStoryStatsState state;

  const VKStoriesStoryStatsStat({
    this.count,
    @required this.state,
  }) : assert(count == null || count >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'state': state?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKStoriesStoryStatsStat.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKStoriesStoryStatsStat(
      count: map['count'] as int,
      state: VKStoriesStoryStatsState(map['state']),
    );
  }
}

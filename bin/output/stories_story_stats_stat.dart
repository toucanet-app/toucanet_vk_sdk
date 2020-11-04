import 'stories_story_stats_state.dart';
import 'package:meta/meta.dart';

class StoriesStoryStatsStat {
  /// Stat value.
  final int count;

  final StoriesStoryStatsState state;

  const StoriesStoryStatsStat({
    this.count,
    @required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'state': state?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory StoriesStoryStatsStat.fromMap(Map<String, dynamic> map) {
    return StoriesStoryStatsStat(
      count: map['count'] as int,
      state: StoriesStoryStatsState(map['state']),
    );
  }
}

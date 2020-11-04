/// Statistic state.
class StoriesStoryStatsState {
  final String value;

  const StoriesStoryStatsState._(this.value);

  factory StoriesStoryStatsState(value) {
    if (!values.contains(value)) return null;

    return StoriesStoryStatsState._(value);
  }

  static const StoriesStoryStatsState on = StoriesStoryStatsState._('on');

  static const StoriesStoryStatsState off = StoriesStoryStatsState._('off');

  static const StoriesStoryStatsState hidden = StoriesStoryStatsState._('hidden');

  static List get values => const ['on', 'off', 'hidden'];

  @override
  String toString() => '$value';
}

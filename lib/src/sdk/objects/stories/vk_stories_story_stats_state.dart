/// Statistic state.
class VKStoriesStoryStatsState {
  final String value;

  const VKStoriesStoryStatsState._(this.value);

  factory VKStoriesStoryStatsState(value) {
    if (!values.contains(value)) return null;
    return VKStoriesStoryStatsState._(value);
  }

  static const VKStoriesStoryStatsState hidden =
      VKStoriesStoryStatsState._('hidden');

  static const VKStoriesStoryStatsState off = VKStoriesStoryStatsState._('off');

  static const VKStoriesStoryStatsState on = VKStoriesStoryStatsState._('on');

  static List get values => const ['on', 'off', 'hidden'];

  @override
  String toString() => '$value';
}

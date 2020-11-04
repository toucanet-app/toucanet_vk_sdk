/// Story type..
class StoriesStoryType {
  final String value;

  const StoriesStoryType._(this.value);

  factory StoriesStoryType(value) {
    if (!values.contains(value)) return null;

    return StoriesStoryType._(value);
  }

  static const StoriesStoryType photo = StoriesStoryType._('photo');

  static const StoriesStoryType video = StoriesStoryType._('video');

  static const StoriesStoryType liveActive = StoriesStoryType._('live_active');

  static const StoriesStoryType liveFinished = StoriesStoryType._('live_finished');

  static const StoriesStoryType birthdayInvite = StoriesStoryType._('birthday_invite');

  static List get values => const ['photo', 'video', 'live_active', 'live_finished', 'birthday_invite'];

  @override
  String toString() => '$value';
}

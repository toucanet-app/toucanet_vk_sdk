/// Story type..
class VKStoriesStoryType {
  final String value;

  const VKStoriesStoryType._(this.value);

  factory VKStoriesStoryType(value) {
    if (!values.contains(value)) return null;
    return VKStoriesStoryType._(value);
  }

  static const VKStoriesStoryType birthdayInvite =
      VKStoriesStoryType._('birthday_invite');

  static const VKStoriesStoryType liveActive =
      VKStoriesStoryType._('live_active');

  static const VKStoriesStoryType liveFinished =
      VKStoriesStoryType._('live_finished');

  static const VKStoriesStoryType photo = VKStoriesStoryType._('photo');

  static const VKStoriesStoryType video = VKStoriesStoryType._('video');

  static List get values => const [
        'photo',
        'video',
        'live_active',
        'live_finished',
        'birthday_invite'
      ];

  @override
  String toString() => '$value';
}

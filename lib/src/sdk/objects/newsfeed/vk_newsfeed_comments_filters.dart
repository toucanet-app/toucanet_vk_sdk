/// .
class VKNewsfeedCommentsFilters {
  final String value;

  const VKNewsfeedCommentsFilters._(this.value);

  factory VKNewsfeedCommentsFilters(value) {
    if (!values.contains(value)) return null;
    return VKNewsfeedCommentsFilters._(value);
  }

  static const VKNewsfeedCommentsFilters note =
      VKNewsfeedCommentsFilters._('note');

  static const VKNewsfeedCommentsFilters photo =
      VKNewsfeedCommentsFilters._('photo');

  static const VKNewsfeedCommentsFilters post =
      VKNewsfeedCommentsFilters._('post');

  static const VKNewsfeedCommentsFilters topic =
      VKNewsfeedCommentsFilters._('topic');

  static const VKNewsfeedCommentsFilters video =
      VKNewsfeedCommentsFilters._('video');

  static List get values => const ['post', 'photo', 'video', 'topic', 'note'];

  @override
  String toString() => '$value';
}

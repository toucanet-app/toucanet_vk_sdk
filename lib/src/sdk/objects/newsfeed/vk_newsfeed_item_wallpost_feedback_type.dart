/// .
class VKNewsfeedItemWallpostFeedbackType {
  final String value;

  const VKNewsfeedItemWallpostFeedbackType._(this.value);

  factory VKNewsfeedItemWallpostFeedbackType(value) {
    if (!values.contains(value)) return null;
    return VKNewsfeedItemWallpostFeedbackType._(value);
  }

  static const VKNewsfeedItemWallpostFeedbackType buttons =
      VKNewsfeedItemWallpostFeedbackType._('buttons');

  static const VKNewsfeedItemWallpostFeedbackType stars =
      VKNewsfeedItemWallpostFeedbackType._('stars');

  static List get values => const ['buttons', 'stars'];

  @override
  String toString() => '$value';
}

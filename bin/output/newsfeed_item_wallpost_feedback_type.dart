/// .
class NewsfeedItemWallpostFeedbackType {
  final String value;

  const NewsfeedItemWallpostFeedbackType._(this.value);

  factory NewsfeedItemWallpostFeedbackType(value) {
    if (!values.contains(value)) return null;

    return NewsfeedItemWallpostFeedbackType._(value);
  }

  static const NewsfeedItemWallpostFeedbackType buttons = NewsfeedItemWallpostFeedbackType._('buttons');

  static const NewsfeedItemWallpostFeedbackType stars = NewsfeedItemWallpostFeedbackType._('stars');

  static List get values => const ['buttons', 'stars'];

  @override
  String toString() => '$value';
}

/// Post type.
class NewsfeedItemWallpostType {
  final String value;

  const NewsfeedItemWallpostType._(this.value);

  factory NewsfeedItemWallpostType(value) {
    if (!values.contains(value)) return null;

    return NewsfeedItemWallpostType._(value);
  }

  static const NewsfeedItemWallpostType post =
      NewsfeedItemWallpostType._('post');

  static const NewsfeedItemWallpostType copy =
      NewsfeedItemWallpostType._('copy');

  static const NewsfeedItemWallpostType reply =
      NewsfeedItemWallpostType._('reply');

  static List get values => const ['post', 'copy', 'reply'];

  @override
  String toString() => '$value';
}

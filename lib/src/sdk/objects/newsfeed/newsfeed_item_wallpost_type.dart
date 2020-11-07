/// Post type.
class VKNewsfeedItemWallpostType {
  final String value;

  const VKNewsfeedItemWallpostType._(this.value);

  factory VKNewsfeedItemWallpostType(value) {
    if (!values.contains(value)) return null;
    return VKNewsfeedItemWallpostType._(value);
  }

  static const VKNewsfeedItemWallpostType copy =
      VKNewsfeedItemWallpostType._('copy');

  static const VKNewsfeedItemWallpostType post =
      VKNewsfeedItemWallpostType._('post');

  static const VKNewsfeedItemWallpostType reply =
      VKNewsfeedItemWallpostType._('reply');

  static List get values => const ['post', 'copy', 'reply'];

  @override
  String toString() => '$value';
}

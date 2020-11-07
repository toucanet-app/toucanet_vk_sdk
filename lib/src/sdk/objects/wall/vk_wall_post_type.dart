/// Post type.
class VKWallPostType {
  final String value;

  const VKWallPostType._(this.value);

  factory VKWallPostType(value) {
    if (!values.contains(value)) return null;
    return VKWallPostType._(value);
  }

  static const VKWallPostType copy = VKWallPostType._('copy');

  static const VKWallPostType post = VKWallPostType._('post');

  static const VKWallPostType postpone = VKWallPostType._('postpone');

  static const VKWallPostType reply = VKWallPostType._('reply');

  static const VKWallPostType suggest = VKWallPostType._('suggest');

  static List get values =>
      const ['post', 'copy', 'reply', 'postpone', 'suggest'];

  @override
  String toString() => '$value';
}

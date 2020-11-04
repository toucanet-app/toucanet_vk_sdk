/// Post type.
class WallPostType {
  final String value;

  const WallPostType._(this.value);

  factory WallPostType(value) {
    if (!values.contains(value)) return null;

    return WallPostType._(value);
  }

  static const WallPostType post = WallPostType._('post');

  static const WallPostType copy = WallPostType._('copy');

  static const WallPostType reply = WallPostType._('reply');

  static const WallPostType postpone = WallPostType._('postpone');

  static const WallPostType suggest = WallPostType._('suggest');

  static List get values => const ['post', 'copy', 'reply', 'postpone', 'suggest'];

  @override
  String toString() => '$value';
}

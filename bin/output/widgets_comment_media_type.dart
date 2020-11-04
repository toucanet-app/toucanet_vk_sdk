/// Media type.
class WidgetsCommentMediaType {
  final String value;

  const WidgetsCommentMediaType._(this.value);

  factory WidgetsCommentMediaType(value) {
    if (!values.contains(value)) return null;

    return WidgetsCommentMediaType._(value);
  }

  static const WidgetsCommentMediaType audio = WidgetsCommentMediaType._('audio');

  static const WidgetsCommentMediaType photo = WidgetsCommentMediaType._('photo');

  static const WidgetsCommentMediaType video = WidgetsCommentMediaType._('video');

  static List get values => const ['audio', 'photo', 'video'];

  @override
  String toString() => '$value';
}

/// Media type.
class VKWidgetsCommentMediaType {
  final String value;

  const VKWidgetsCommentMediaType._(this.value);

  factory VKWidgetsCommentMediaType(value) {
    if (!values.contains(value)) return null;
    return VKWidgetsCommentMediaType._(value);
  }

  static const VKWidgetsCommentMediaType audio =
      VKWidgetsCommentMediaType._('audio');

  static const VKWidgetsCommentMediaType photo =
      VKWidgetsCommentMediaType._('photo');

  static const VKWidgetsCommentMediaType video =
      VKWidgetsCommentMediaType._('video');

  static List get values => const ['audio', 'photo', 'video'];

  @override
  String toString() => '$value';
}

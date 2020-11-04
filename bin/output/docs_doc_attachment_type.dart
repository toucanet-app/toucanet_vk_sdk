/// Doc attachment type.
class DocsDocAttachmentType {
  final String value;

  const DocsDocAttachmentType._(this.value);

  factory DocsDocAttachmentType(value) {
    if (!values.contains(value)) return null;

    return DocsDocAttachmentType._(value);
  }

  static const DocsDocAttachmentType doc = DocsDocAttachmentType._('doc');

  static const DocsDocAttachmentType graffiti =
      DocsDocAttachmentType._('graffiti');

  static const DocsDocAttachmentType audioMessage =
      DocsDocAttachmentType._('audio_message');

  static List get values => const ['doc', 'graffiti', 'audio_message'];

  @override
  String toString() => '$value';
}

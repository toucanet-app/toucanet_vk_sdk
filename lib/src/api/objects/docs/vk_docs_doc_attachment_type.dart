/// Doc attachment type.
class VKDocsDocAttachmentType {
  final String value;

  const VKDocsDocAttachmentType._(this.value);

  factory VKDocsDocAttachmentType(value) {
    if (!values.contains(value)) return null;
    return VKDocsDocAttachmentType._(value);
  }

  static const VKDocsDocAttachmentType audioMessage =
      VKDocsDocAttachmentType._('audio_message');

  static const VKDocsDocAttachmentType doc = VKDocsDocAttachmentType._('doc');

  static const VKDocsDocAttachmentType graffiti =
      VKDocsDocAttachmentType._('graffiti');

  static List get values => const ['doc', 'graffiti', 'audio_message'];

  @override
  String toString() => '$value';
}

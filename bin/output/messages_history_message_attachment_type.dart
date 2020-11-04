/// Attachments type.
class MessagesHistoryMessageAttachmentType {
  final String value;

  const MessagesHistoryMessageAttachmentType._(this.value);

  factory MessagesHistoryMessageAttachmentType(value) {
    if (!values.contains(value)) return null;

    return MessagesHistoryMessageAttachmentType._(value);
  }

  static const MessagesHistoryMessageAttachmentType photo = MessagesHistoryMessageAttachmentType._('photo');

  static const MessagesHistoryMessageAttachmentType video = MessagesHistoryMessageAttachmentType._('video');

  static const MessagesHistoryMessageAttachmentType audio = MessagesHistoryMessageAttachmentType._('audio');

  static const MessagesHistoryMessageAttachmentType doc = MessagesHistoryMessageAttachmentType._('doc');

  static const MessagesHistoryMessageAttachmentType link = MessagesHistoryMessageAttachmentType._('link');

  static const MessagesHistoryMessageAttachmentType market = MessagesHistoryMessageAttachmentType._('market');

  static const MessagesHistoryMessageAttachmentType wall = MessagesHistoryMessageAttachmentType._('wall');

  static const MessagesHistoryMessageAttachmentType share = MessagesHistoryMessageAttachmentType._('share');

  static const MessagesHistoryMessageAttachmentType graffiti = MessagesHistoryMessageAttachmentType._('graffiti');

  static const MessagesHistoryMessageAttachmentType audioMessage = MessagesHistoryMessageAttachmentType._('audio_message');

  static List get values => const ['photo', 'video', 'audio', 'doc', 'link', 'market', 'wall', 'share', 'graffiti', 'audio_message'];

  @override
  String toString() => '$value';
}

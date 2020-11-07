/// Attachments type.
class VKMessagesHistoryMessageAttachmentType {
  final String value;

  const VKMessagesHistoryMessageAttachmentType._(this.value);

  factory VKMessagesHistoryMessageAttachmentType(value) {
    if (!values.contains(value)) return null;
    return VKMessagesHistoryMessageAttachmentType._(value);
  }

  static const VKMessagesHistoryMessageAttachmentType audio =
      VKMessagesHistoryMessageAttachmentType._('audio');

  static const VKMessagesHistoryMessageAttachmentType audioMessage =
      VKMessagesHistoryMessageAttachmentType._('audio_message');

  static const VKMessagesHistoryMessageAttachmentType doc =
      VKMessagesHistoryMessageAttachmentType._('doc');

  static const VKMessagesHistoryMessageAttachmentType graffiti =
      VKMessagesHistoryMessageAttachmentType._('graffiti');

  static const VKMessagesHistoryMessageAttachmentType link =
      VKMessagesHistoryMessageAttachmentType._('link');

  static const VKMessagesHistoryMessageAttachmentType market =
      VKMessagesHistoryMessageAttachmentType._('market');

  static const VKMessagesHistoryMessageAttachmentType photo =
      VKMessagesHistoryMessageAttachmentType._('photo');

  static const VKMessagesHistoryMessageAttachmentType share =
      VKMessagesHistoryMessageAttachmentType._('share');

  static const VKMessagesHistoryMessageAttachmentType video =
      VKMessagesHistoryMessageAttachmentType._('video');

  static const VKMessagesHistoryMessageAttachmentType wall =
      VKMessagesHistoryMessageAttachmentType._('wall');

  static List get values => const [
        'photo',
        'video',
        'audio',
        'doc',
        'link',
        'market',
        'wall',
        'share',
        'graffiti',
        'audio_message'
      ];

  @override
  String toString() => '$value';
}

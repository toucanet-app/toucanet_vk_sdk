/// Attachment type.
class VKMessagesMessageAttachmentType {
  final String value;

  const VKMessagesMessageAttachmentType._(this.value);

  factory VKMessagesMessageAttachmentType(value) {
    if (!values.contains(value)) return null;
    return VKMessagesMessageAttachmentType._(value);
  }

  static const VKMessagesMessageAttachmentType article =
      VKMessagesMessageAttachmentType._('article');

  static const VKMessagesMessageAttachmentType audio =
      VKMessagesMessageAttachmentType._('audio');

  static const VKMessagesMessageAttachmentType audioMessage =
      VKMessagesMessageAttachmentType._('audio_message');

  static const VKMessagesMessageAttachmentType doc =
      VKMessagesMessageAttachmentType._('doc');

  static const VKMessagesMessageAttachmentType gift =
      VKMessagesMessageAttachmentType._('gift');

  static const VKMessagesMessageAttachmentType graffiti =
      VKMessagesMessageAttachmentType._('graffiti');

  static const VKMessagesMessageAttachmentType link =
      VKMessagesMessageAttachmentType._('link');

  static const VKMessagesMessageAttachmentType market =
      VKMessagesMessageAttachmentType._('market');

  static const VKMessagesMessageAttachmentType marketAlbum =
      VKMessagesMessageAttachmentType._('market_album');

  static const VKMessagesMessageAttachmentType photo =
      VKMessagesMessageAttachmentType._('photo');

  static const VKMessagesMessageAttachmentType sticker =
      VKMessagesMessageAttachmentType._('sticker');

  static const VKMessagesMessageAttachmentType video =
      VKMessagesMessageAttachmentType._('video');

  static const VKMessagesMessageAttachmentType wall =
      VKMessagesMessageAttachmentType._('wall');

  static const VKMessagesMessageAttachmentType wallReply =
      VKMessagesMessageAttachmentType._('wall_reply');

  static List get values => const [
        'photo',
        'audio',
        'video',
        'doc',
        'link',
        'market',
        'market_album',
        'gift',
        'sticker',
        'wall',
        'wall_reply',
        'article',
        'graffiti',
        'audio_message'
      ];

  @override
  String toString() => '$value';
}

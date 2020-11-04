/// Attachment type.
class MessagesMessageAttachmentType {
  final String value;

  const MessagesMessageAttachmentType._(this.value);

  factory MessagesMessageAttachmentType(value) {
    if (!values.contains(value)) return null;

    return MessagesMessageAttachmentType._(value);
  }

  static const MessagesMessageAttachmentType photo =
      MessagesMessageAttachmentType._('photo');

  static const MessagesMessageAttachmentType audio =
      MessagesMessageAttachmentType._('audio');

  static const MessagesMessageAttachmentType video =
      MessagesMessageAttachmentType._('video');

  static const MessagesMessageAttachmentType doc =
      MessagesMessageAttachmentType._('doc');

  static const MessagesMessageAttachmentType link =
      MessagesMessageAttachmentType._('link');

  static const MessagesMessageAttachmentType market =
      MessagesMessageAttachmentType._('market');

  static const MessagesMessageAttachmentType marketAlbum =
      MessagesMessageAttachmentType._('market_album');

  static const MessagesMessageAttachmentType gift =
      MessagesMessageAttachmentType._('gift');

  static const MessagesMessageAttachmentType sticker =
      MessagesMessageAttachmentType._('sticker');

  static const MessagesMessageAttachmentType wall =
      MessagesMessageAttachmentType._('wall');

  static const MessagesMessageAttachmentType wallReply =
      MessagesMessageAttachmentType._('wall_reply');

  static const MessagesMessageAttachmentType article =
      MessagesMessageAttachmentType._('article');

  static const MessagesMessageAttachmentType graffiti =
      MessagesMessageAttachmentType._('graffiti');

  static const MessagesMessageAttachmentType audioMessage =
      MessagesMessageAttachmentType._('audio_message');

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

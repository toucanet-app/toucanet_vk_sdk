/// Attachment type.
class VKWallCommentAttachmentType {
  final String value;

  const VKWallCommentAttachmentType._(this.value);

  factory VKWallCommentAttachmentType(value) {
    if (!values.contains(value)) return null;
    return VKWallCommentAttachmentType._(value);
  }

  static const VKWallCommentAttachmentType audio =
      VKWallCommentAttachmentType._('audio');

  static const VKWallCommentAttachmentType doc =
      VKWallCommentAttachmentType._('doc');

  static const VKWallCommentAttachmentType link =
      VKWallCommentAttachmentType._('link');

  static const VKWallCommentAttachmentType market =
      VKWallCommentAttachmentType._('market');

  static const VKWallCommentAttachmentType marketMarketAlbum =
      VKWallCommentAttachmentType._('market_market_album');

  static const VKWallCommentAttachmentType note =
      VKWallCommentAttachmentType._('note');

  static const VKWallCommentAttachmentType page =
      VKWallCommentAttachmentType._('page');

  static const VKWallCommentAttachmentType photo =
      VKWallCommentAttachmentType._('photo');

  static const VKWallCommentAttachmentType sticker =
      VKWallCommentAttachmentType._('sticker');

  static const VKWallCommentAttachmentType video =
      VKWallCommentAttachmentType._('video');

  static List get values => const [
        'photo',
        'audio',
        'video',
        'doc',
        'link',
        'note',
        'page',
        'market_market_album',
        'market',
        'sticker'
      ];

  @override
  String toString() => '$value';
}

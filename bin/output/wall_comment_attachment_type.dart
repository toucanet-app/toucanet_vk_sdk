/// Attachment type.
class WallCommentAttachmentType {
  final String value;

  const WallCommentAttachmentType._(this.value);

  factory WallCommentAttachmentType(value) {
    if (!values.contains(value)) return null;

    return WallCommentAttachmentType._(value);
  }

  static const WallCommentAttachmentType photo = WallCommentAttachmentType._('photo');

  static const WallCommentAttachmentType audio = WallCommentAttachmentType._('audio');

  static const WallCommentAttachmentType video = WallCommentAttachmentType._('video');

  static const WallCommentAttachmentType doc = WallCommentAttachmentType._('doc');

  static const WallCommentAttachmentType link = WallCommentAttachmentType._('link');

  static const WallCommentAttachmentType note = WallCommentAttachmentType._('note');

  static const WallCommentAttachmentType page = WallCommentAttachmentType._('page');

  static const WallCommentAttachmentType marketMarketAlbum = WallCommentAttachmentType._('market_market_album');

  static const WallCommentAttachmentType market = WallCommentAttachmentType._('market');

  static const WallCommentAttachmentType sticker = WallCommentAttachmentType._('sticker');

  static List get values => const ['photo', 'audio', 'video', 'doc', 'link', 'note', 'page', 'market_market_album', 'market', 'sticker'];

  @override
  String toString() => '$value';
}

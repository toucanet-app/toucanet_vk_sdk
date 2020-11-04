/// Attachment type.
class WallWallpostAttachmentType {
  final String value;

  const WallWallpostAttachmentType._(this.value);

  factory WallWallpostAttachmentType(value) {
    if (!values.contains(value)) return null;

    return WallWallpostAttachmentType._(value);
  }

  static const WallWallpostAttachmentType photo = WallWallpostAttachmentType._('photo');

  static const WallWallpostAttachmentType postedPhoto = WallWallpostAttachmentType._('posted_photo');

  static const WallWallpostAttachmentType audio = WallWallpostAttachmentType._('audio');

  static const WallWallpostAttachmentType video = WallWallpostAttachmentType._('video');

  static const WallWallpostAttachmentType doc = WallWallpostAttachmentType._('doc');

  static const WallWallpostAttachmentType link = WallWallpostAttachmentType._('link');

  static const WallWallpostAttachmentType graffiti = WallWallpostAttachmentType._('graffiti');

  static const WallWallpostAttachmentType note = WallWallpostAttachmentType._('note');

  static const WallWallpostAttachmentType app = WallWallpostAttachmentType._('app');

  static const WallWallpostAttachmentType poll = WallWallpostAttachmentType._('poll');

  static const WallWallpostAttachmentType page = WallWallpostAttachmentType._('page');

  static const WallWallpostAttachmentType album = WallWallpostAttachmentType._('album');

  static const WallWallpostAttachmentType photosList = WallWallpostAttachmentType._('photos_list');

  static const WallWallpostAttachmentType marketMarketAlbum = WallWallpostAttachmentType._('market_market_album');

  static const WallWallpostAttachmentType market = WallWallpostAttachmentType._('market');

  static const WallWallpostAttachmentType event = WallWallpostAttachmentType._('event');

  static List get values => const ['photo', 'posted_photo', 'audio', 'video', 'doc', 'link', 'graffiti', 'note', 'app', 'poll', 'page', 'album', 'photos_list', 'market_market_album', 'market', 'event'];

  @override
  String toString() => '$value';
}

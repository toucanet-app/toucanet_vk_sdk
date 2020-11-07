/// Attachment type.
class VKWallWallpostAttachmentType {
  final String value;

  const VKWallWallpostAttachmentType._(this.value);

  factory VKWallWallpostAttachmentType(value) {
    if (!values.contains(value)) return null;
    return VKWallWallpostAttachmentType._(value);
  }

  static const VKWallWallpostAttachmentType album =
      VKWallWallpostAttachmentType._('album');

  static const VKWallWallpostAttachmentType app =
      VKWallWallpostAttachmentType._('app');

  static const VKWallWallpostAttachmentType audio =
      VKWallWallpostAttachmentType._('audio');

  static const VKWallWallpostAttachmentType doc =
      VKWallWallpostAttachmentType._('doc');

  static const VKWallWallpostAttachmentType event =
      VKWallWallpostAttachmentType._('event');

  static const VKWallWallpostAttachmentType graffiti =
      VKWallWallpostAttachmentType._('graffiti');

  static const VKWallWallpostAttachmentType link =
      VKWallWallpostAttachmentType._('link');

  static const VKWallWallpostAttachmentType market =
      VKWallWallpostAttachmentType._('market');

  static const VKWallWallpostAttachmentType marketMarketAlbum =
      VKWallWallpostAttachmentType._('market_market_album');

  static const VKWallWallpostAttachmentType note =
      VKWallWallpostAttachmentType._('note');

  static const VKWallWallpostAttachmentType page =
      VKWallWallpostAttachmentType._('page');

  static const VKWallWallpostAttachmentType photo =
      VKWallWallpostAttachmentType._('photo');

  static const VKWallWallpostAttachmentType photosList =
      VKWallWallpostAttachmentType._('photos_list');

  static const VKWallWallpostAttachmentType poll =
      VKWallWallpostAttachmentType._('poll');

  static const VKWallWallpostAttachmentType postedPhoto =
      VKWallWallpostAttachmentType._('posted_photo');

  static const VKWallWallpostAttachmentType video =
      VKWallWallpostAttachmentType._('video');

  static List get values => const [
        'photo',
        'posted_photo',
        'audio',
        'video',
        'doc',
        'link',
        'graffiti',
        'note',
        'app',
        'poll',
        'page',
        'album',
        'photos_list',
        'market_market_album',
        'market',
        'event'
      ];

  @override
  String toString() => '$value';
}

/// Item type.
class VKNewsfeedNewsfeedItemType {
  final String value;

  const VKNewsfeedNewsfeedItemType._(this.value);

  factory VKNewsfeedNewsfeedItemType(value) {
    if (!values.contains(value)) return null;
    return VKNewsfeedNewsfeedItemType._(value);
  }

  static const VKNewsfeedNewsfeedItemType audio =
      VKNewsfeedNewsfeedItemType._('audio');

  static const VKNewsfeedNewsfeedItemType digest =
      VKNewsfeedNewsfeedItemType._('digest');

  static const VKNewsfeedNewsfeedItemType friend =
      VKNewsfeedNewsfeedItemType._('friend');

  static const VKNewsfeedNewsfeedItemType note =
      VKNewsfeedNewsfeedItemType._('note');

  static const VKNewsfeedNewsfeedItemType photo =
      VKNewsfeedNewsfeedItemType._('photo');

  static const VKNewsfeedNewsfeedItemType photoTag =
      VKNewsfeedNewsfeedItemType._('photo_tag');

  static const VKNewsfeedNewsfeedItemType post =
      VKNewsfeedNewsfeedItemType._('post');

  static const VKNewsfeedNewsfeedItemType stories =
      VKNewsfeedNewsfeedItemType._('stories');

  static const VKNewsfeedNewsfeedItemType tagsSuggestions =
      VKNewsfeedNewsfeedItemType._('tags_suggestions');

  static const VKNewsfeedNewsfeedItemType topic =
      VKNewsfeedNewsfeedItemType._('topic');

  static const VKNewsfeedNewsfeedItemType video =
      VKNewsfeedNewsfeedItemType._('video');

  static const VKNewsfeedNewsfeedItemType wallPhoto =
      VKNewsfeedNewsfeedItemType._('wall_photo');

  static List get values => const [
        'post',
        'photo',
        'photo_tag',
        'wall_photo',
        'friend',
        'note',
        'audio',
        'video',
        'topic',
        'digest',
        'stories',
        'tags_suggestions'
      ];

  @override
  String toString() => '$value';
}

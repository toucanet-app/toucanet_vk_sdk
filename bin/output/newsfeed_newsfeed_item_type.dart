/// Item type.
class NewsfeedNewsfeedItemType {
  final String value;

  const NewsfeedNewsfeedItemType._(this.value);

  factory NewsfeedNewsfeedItemType(value) {
    if (!values.contains(value)) return null;

    return NewsfeedNewsfeedItemType._(value);
  }

  static const NewsfeedNewsfeedItemType post = NewsfeedNewsfeedItemType._('post');

  static const NewsfeedNewsfeedItemType photo = NewsfeedNewsfeedItemType._('photo');

  static const NewsfeedNewsfeedItemType photoTag = NewsfeedNewsfeedItemType._('photo_tag');

  static const NewsfeedNewsfeedItemType wallPhoto = NewsfeedNewsfeedItemType._('wall_photo');

  static const NewsfeedNewsfeedItemType friend = NewsfeedNewsfeedItemType._('friend');

  static const NewsfeedNewsfeedItemType note = NewsfeedNewsfeedItemType._('note');

  static const NewsfeedNewsfeedItemType audio = NewsfeedNewsfeedItemType._('audio');

  static const NewsfeedNewsfeedItemType video = NewsfeedNewsfeedItemType._('video');

  static const NewsfeedNewsfeedItemType topic = NewsfeedNewsfeedItemType._('topic');

  static const NewsfeedNewsfeedItemType digest = NewsfeedNewsfeedItemType._('digest');

  static const NewsfeedNewsfeedItemType stories = NewsfeedNewsfeedItemType._('stories');

  static const NewsfeedNewsfeedItemType tagsSuggestions = NewsfeedNewsfeedItemType._('tags_suggestions');

  static List get values => const ['post', 'photo', 'photo_tag', 'wall_photo', 'friend', 'note', 'audio', 'video', 'topic', 'digest', 'stories', 'tags_suggestions'];

  @override
  String toString() => '$value';
}

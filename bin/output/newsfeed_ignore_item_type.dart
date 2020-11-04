/// .
class NewsfeedIgnoreItemType {
  final String value;

  const NewsfeedIgnoreItemType._(this.value);

  factory NewsfeedIgnoreItemType(value) {
    if (!values.contains(value)) return null;

    return NewsfeedIgnoreItemType._(value);
  }

  static const NewsfeedIgnoreItemType wall = NewsfeedIgnoreItemType._('wall');

  static const NewsfeedIgnoreItemType tag = NewsfeedIgnoreItemType._('tag');

  static const NewsfeedIgnoreItemType profilephoto =
      NewsfeedIgnoreItemType._('profilephoto');

  static const NewsfeedIgnoreItemType video = NewsfeedIgnoreItemType._('video');

  static const NewsfeedIgnoreItemType photo = NewsfeedIgnoreItemType._('photo');

  static const NewsfeedIgnoreItemType audio = NewsfeedIgnoreItemType._('audio');

  static List get values =>
      const ['wall', 'tag', 'profilephoto', 'video', 'photo', 'audio'];

  @override
  String toString() => '$value';
}

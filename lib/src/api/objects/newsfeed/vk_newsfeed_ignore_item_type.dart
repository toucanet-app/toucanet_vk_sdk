/// .
class VKNewsfeedIgnoreItemType {
  final String value;

  const VKNewsfeedIgnoreItemType._(this.value);

  factory VKNewsfeedIgnoreItemType(value) {
    if (!values.contains(value)) return null;
    return VKNewsfeedIgnoreItemType._(value);
  }

  static const VKNewsfeedIgnoreItemType audio =
      VKNewsfeedIgnoreItemType._('audio');

  static const VKNewsfeedIgnoreItemType photo =
      VKNewsfeedIgnoreItemType._('photo');

  static const VKNewsfeedIgnoreItemType profilephoto =
      VKNewsfeedIgnoreItemType._('profilephoto');

  static const VKNewsfeedIgnoreItemType tag = VKNewsfeedIgnoreItemType._('tag');

  static const VKNewsfeedIgnoreItemType video =
      VKNewsfeedIgnoreItemType._('video');

  static const VKNewsfeedIgnoreItemType wall =
      VKNewsfeedIgnoreItemType._('wall');

  static List get values =>
      const ['wall', 'tag', 'profilephoto', 'video', 'photo', 'audio'];

  @override
  String toString() => '$value';
}

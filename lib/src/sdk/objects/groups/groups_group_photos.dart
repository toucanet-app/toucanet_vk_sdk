/// .
class VKGroupsGroupPhotos {
  final int value;

  const VKGroupsGroupPhotos._(this.value);

  factory VKGroupsGroupPhotos(value) {
    if (!values.contains(value)) return null;
    return VKGroupsGroupPhotos._(value);
  }

  static const VKGroupsGroupPhotos disabled = VKGroupsGroupPhotos._(0);

  static const VKGroupsGroupPhotos limited = VKGroupsGroupPhotos._(2);

  static const VKGroupsGroupPhotos open = VKGroupsGroupPhotos._(1);

  static List get values => const [0, 1, 2];

  @override
  String toString() => '$value';
}

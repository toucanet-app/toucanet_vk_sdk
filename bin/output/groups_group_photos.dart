/// .
class GroupsGroupPhotos {
  final int value;

  const GroupsGroupPhotos._(this.value);

  factory GroupsGroupPhotos(value) {
    if (!values.contains(value)) return null;

    return GroupsGroupPhotos._(value);
  }

  static const GroupsGroupPhotos disabled = GroupsGroupPhotos._(0);

  static const GroupsGroupPhotos open = GroupsGroupPhotos._(1);

  static const GroupsGroupPhotos limited = GroupsGroupPhotos._(2);

  static List get values => const [0, 1, 2];

  @override
  String toString() => '$value';
}

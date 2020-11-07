/// .
class VKGroupsGroupWall {
  final int value;

  const VKGroupsGroupWall._(this.value);

  factory VKGroupsGroupWall(value) {
    if (!values.contains(value)) return null;
    return VKGroupsGroupWall._(value);
  }

  static const VKGroupsGroupWall closed = VKGroupsGroupWall._(3);

  static const VKGroupsGroupWall disabled = VKGroupsGroupWall._(0);

  static const VKGroupsGroupWall limited = VKGroupsGroupWall._(2);

  static const VKGroupsGroupWall open = VKGroupsGroupWall._(1);

  static List get values => const [0, 1, 2, 3];

  @override
  String toString() => '$value';
}

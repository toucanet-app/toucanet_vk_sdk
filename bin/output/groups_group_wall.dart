/// .
class GroupsGroupWall {
  final int value;

  const GroupsGroupWall._(this.value);

  factory GroupsGroupWall(value) {
    if (!values.contains(value)) return null;

    return GroupsGroupWall._(value);
  }

  static const GroupsGroupWall disabled = GroupsGroupWall._(0);

  static const GroupsGroupWall open = GroupsGroupWall._(1);

  static const GroupsGroupWall limited = GroupsGroupWall._(2);

  static const GroupsGroupWall closed = GroupsGroupWall._(3);

  static List get values => const [0, 1, 2, 3];

  @override
  String toString() => '$value';
}

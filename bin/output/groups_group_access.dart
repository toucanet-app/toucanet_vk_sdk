/// .
class GroupsGroupAccess {
  final int value;

  const GroupsGroupAccess._(this.value);

  factory GroupsGroupAccess(value) {
    if (!values.contains(value)) return null;

    return GroupsGroupAccess._(value);
  }

  static const GroupsGroupAccess open = GroupsGroupAccess._(0);

  static const GroupsGroupAccess closed = GroupsGroupAccess._(1);

  static const GroupsGroupAccess private = GroupsGroupAccess._(2);

  static List get values => const [0, 1, 2];

  @override
  String toString() => '$value';
}

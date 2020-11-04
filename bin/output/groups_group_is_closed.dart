/// Information whether community is closed.
class GroupsGroupIsClosed {
  final int value;

  const GroupsGroupIsClosed._(this.value);

  factory GroupsGroupIsClosed(value) {
    if (!values.contains(value)) return null;

    return GroupsGroupIsClosed._(value);
  }

  static const GroupsGroupIsClosed open = GroupsGroupIsClosed._(0);

  static const GroupsGroupIsClosed closed = GroupsGroupIsClosed._(1);

  static const GroupsGroupIsClosed private = GroupsGroupIsClosed._(2);

  static List get values => const [0, 1, 2];

  @override
  String toString() => '$value';
}

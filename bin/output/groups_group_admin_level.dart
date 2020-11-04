/// Level of current user's credentials as manager.
class GroupsGroupAdminLevel {
  final int value;

  const GroupsGroupAdminLevel._(this.value);

  factory GroupsGroupAdminLevel(value) {
    if (!values.contains(value)) return null;

    return GroupsGroupAdminLevel._(value);
  }

  static const GroupsGroupAdminLevel moderator = GroupsGroupAdminLevel._(1);

  static const GroupsGroupAdminLevel editor = GroupsGroupAdminLevel._(2);

  static const GroupsGroupAdminLevel administrator = GroupsGroupAdminLevel._(3);

  static List get values => const [1, 2, 3];

  @override
  String toString() => '$value';
}

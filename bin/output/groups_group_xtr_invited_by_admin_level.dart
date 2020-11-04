/// Level of current user's credentials as manager.
class GroupsGroupXtrInvitedByAdminLevel {
  final int value;

  const GroupsGroupXtrInvitedByAdminLevel._(this.value);

  factory GroupsGroupXtrInvitedByAdminLevel(value) {
    if (!values.contains(value)) return null;

    return GroupsGroupXtrInvitedByAdminLevel._(value);
  }

  static const GroupsGroupXtrInvitedByAdminLevel moderator =
      GroupsGroupXtrInvitedByAdminLevel._(1);

  static const GroupsGroupXtrInvitedByAdminLevel editor =
      GroupsGroupXtrInvitedByAdminLevel._(2);

  static const GroupsGroupXtrInvitedByAdminLevel administrator =
      GroupsGroupXtrInvitedByAdminLevel._(3);

  static List get values => const [1, 2, 3];

  @override
  String toString() => '$value';
}

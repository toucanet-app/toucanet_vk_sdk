/// Level of current user's credentials as manager.
class VKGroupsGroupXtrInvitedByAdminLevel {
  final int value;

  const VKGroupsGroupXtrInvitedByAdminLevel._(this.value);

  factory VKGroupsGroupXtrInvitedByAdminLevel(value) {
    if (!values.contains(value)) return null;
    return VKGroupsGroupXtrInvitedByAdminLevel._(value);
  }

  static const VKGroupsGroupXtrInvitedByAdminLevel administrator =
      VKGroupsGroupXtrInvitedByAdminLevel._(3);

  static const VKGroupsGroupXtrInvitedByAdminLevel editor =
      VKGroupsGroupXtrInvitedByAdminLevel._(2);

  static const VKGroupsGroupXtrInvitedByAdminLevel moderator =
      VKGroupsGroupXtrInvitedByAdminLevel._(1);

  static List get values => const [1, 2, 3];

  @override
  String toString() => '$value';
}

/// Community type.
class VKGroupsGroupXtrInvitedByType {
  final String value;

  const VKGroupsGroupXtrInvitedByType._(this.value);

  factory VKGroupsGroupXtrInvitedByType(value) {
    if (!values.contains(value)) return null;
    return VKGroupsGroupXtrInvitedByType._(value);
  }

  static const VKGroupsGroupXtrInvitedByType event =
      VKGroupsGroupXtrInvitedByType._('event');

  static const VKGroupsGroupXtrInvitedByType group =
      VKGroupsGroupXtrInvitedByType._('group');

  static const VKGroupsGroupXtrInvitedByType page =
      VKGroupsGroupXtrInvitedByType._('page');

  static List get values => const ['group', 'page', 'event'];

  @override
  String toString() => '$value';
}

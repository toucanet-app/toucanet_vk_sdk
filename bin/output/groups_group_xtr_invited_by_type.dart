/// Community type.
class GroupsGroupXtrInvitedByType {
  final String value;

  const GroupsGroupXtrInvitedByType._(this.value);

  factory GroupsGroupXtrInvitedByType(value) {
    if (!values.contains(value)) return null;

    return GroupsGroupXtrInvitedByType._(value);
  }

  static const GroupsGroupXtrInvitedByType group =
      GroupsGroupXtrInvitedByType._('group');

  static const GroupsGroupXtrInvitedByType page =
      GroupsGroupXtrInvitedByType._('page');

  static const GroupsGroupXtrInvitedByType event =
      GroupsGroupXtrInvitedByType._('event');

  static List get values => const ['group', 'page', 'event'];

  @override
  String toString() => '$value';
}

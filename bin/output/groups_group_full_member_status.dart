/// .
class GroupsGroupFullMemberStatus {
  final int value;

  const GroupsGroupFullMemberStatus._(this.value);

  factory GroupsGroupFullMemberStatus(value) {
    if (!values.contains(value)) return null;

    return GroupsGroupFullMemberStatus._(value);
  }

  static const GroupsGroupFullMemberStatus notAMember = GroupsGroupFullMemberStatus._(0);

  static const GroupsGroupFullMemberStatus member = GroupsGroupFullMemberStatus._(1);

  static const GroupsGroupFullMemberStatus notSure = GroupsGroupFullMemberStatus._(2);

  static const GroupsGroupFullMemberStatus declined = GroupsGroupFullMemberStatus._(3);

  static const GroupsGroupFullMemberStatus hasSentARequest = GroupsGroupFullMemberStatus._(4);

  static const GroupsGroupFullMemberStatus invited = GroupsGroupFullMemberStatus._(5);

  static List get values => const [0, 1, 2, 3, 4, 5];

  @override
  String toString() => '$value';
}

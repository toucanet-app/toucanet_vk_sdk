/// .
class VKGroupsGroupFullMemberStatus {
  final int value;

  const VKGroupsGroupFullMemberStatus._(this.value);

  factory VKGroupsGroupFullMemberStatus(value) {
    if (!values.contains(value)) return null;
    return VKGroupsGroupFullMemberStatus._(value);
  }

  static const VKGroupsGroupFullMemberStatus declined =
      VKGroupsGroupFullMemberStatus._(3);

  static const VKGroupsGroupFullMemberStatus hasSentARequest =
      VKGroupsGroupFullMemberStatus._(4);

  static const VKGroupsGroupFullMemberStatus invited =
      VKGroupsGroupFullMemberStatus._(5);

  static const VKGroupsGroupFullMemberStatus member =
      VKGroupsGroupFullMemberStatus._(1);

  static const VKGroupsGroupFullMemberStatus notAMember =
      VKGroupsGroupFullMemberStatus._(0);

  static const VKGroupsGroupFullMemberStatus notSure =
      VKGroupsGroupFullMemberStatus._(2);

  static List get values => const [0, 1, 2, 3, 4, 5];

  @override
  String toString() => '$value';
}

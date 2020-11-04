/// Owner type.
class GroupsOwnerXtrBanInfoType {
  final String value;

  const GroupsOwnerXtrBanInfoType._(this.value);

  factory GroupsOwnerXtrBanInfoType(value) {
    if (!values.contains(value)) return null;

    return GroupsOwnerXtrBanInfoType._(value);
  }

  static const GroupsOwnerXtrBanInfoType group = GroupsOwnerXtrBanInfoType._('group');

  static const GroupsOwnerXtrBanInfoType profile = GroupsOwnerXtrBanInfoType._('profile');

  static List get values => const ['group', 'profile'];

  @override
  String toString() => '$value';
}

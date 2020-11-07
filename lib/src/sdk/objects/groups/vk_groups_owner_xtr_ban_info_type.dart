/// Owner type.
class VKGroupsOwnerXtrBanInfoType {
  final String value;

  const VKGroupsOwnerXtrBanInfoType._(this.value);

  factory VKGroupsOwnerXtrBanInfoType(value) {
    if (!values.contains(value)) return null;
    return VKGroupsOwnerXtrBanInfoType._(value);
  }

  static const VKGroupsOwnerXtrBanInfoType group =
      VKGroupsOwnerXtrBanInfoType._('group');

  static const VKGroupsOwnerXtrBanInfoType profile =
      VKGroupsOwnerXtrBanInfoType._('profile');

  static List get values => const ['group', 'profile'];

  @override
  String toString() => '$value';
}

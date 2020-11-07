/// Level of current user's credentials as manager.
class VKGroupsGroupAdminLevel {
  final int value;

  const VKGroupsGroupAdminLevel._(this.value);

  factory VKGroupsGroupAdminLevel(value) {
    if (!values.contains(value)) return null;
    return VKGroupsGroupAdminLevel._(value);
  }

  static const VKGroupsGroupAdminLevel administrator =
      VKGroupsGroupAdminLevel._(3);

  static const VKGroupsGroupAdminLevel editor = VKGroupsGroupAdminLevel._(2);

  static const VKGroupsGroupAdminLevel moderator = VKGroupsGroupAdminLevel._(1);

  static List get values => const [1, 2, 3];

  @override
  String toString() => '$value';
}

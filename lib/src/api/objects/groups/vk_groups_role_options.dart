/// User's credentials as community admin.
class VKGroupsRoleOptions {
  final String value;

  const VKGroupsRoleOptions._(this.value);

  factory VKGroupsRoleOptions(value) {
    if (!values.contains(value)) return null;
    return VKGroupsRoleOptions._(value);
  }

  static const VKGroupsRoleOptions administrator =
      VKGroupsRoleOptions._('administrator');

  static const VKGroupsRoleOptions creator = VKGroupsRoleOptions._('creator');

  static const VKGroupsRoleOptions editor = VKGroupsRoleOptions._('editor');

  static const VKGroupsRoleOptions moderator =
      VKGroupsRoleOptions._('moderator');

  static List get values =>
      const ['moderator', 'editor', 'administrator', 'creator'];

  @override
  String toString() => '$value';
}

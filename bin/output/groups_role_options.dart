/// User's credentials as community admin.
class GroupsRoleOptions {
  final String value;

  const GroupsRoleOptions._(this.value);

  factory GroupsRoleOptions(value) {
    if (!values.contains(value)) return null;

    return GroupsRoleOptions._(value);
  }

  static const GroupsRoleOptions moderator = GroupsRoleOptions._('moderator');

  static const GroupsRoleOptions editor = GroupsRoleOptions._('editor');

  static const GroupsRoleOptions administrator = GroupsRoleOptions._('administrator');

  static const GroupsRoleOptions creator = GroupsRoleOptions._('creator');

  static List get values => const ['moderator', 'editor', 'administrator', 'creator'];

  @override
  String toString() => '$value';
}

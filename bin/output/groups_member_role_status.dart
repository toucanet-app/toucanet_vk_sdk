/// User's credentials as community admin.
class GroupsMemberRoleStatus {
  final String value;

  const GroupsMemberRoleStatus._(this.value);

  factory GroupsMemberRoleStatus(value) {
    if (!values.contains(value)) return null;

    return GroupsMemberRoleStatus._(value);
  }

  static const GroupsMemberRoleStatus moderator =
      GroupsMemberRoleStatus._('moderator');

  static const GroupsMemberRoleStatus editor =
      GroupsMemberRoleStatus._('editor');

  static const GroupsMemberRoleStatus administrator =
      GroupsMemberRoleStatus._('administrator');

  static const GroupsMemberRoleStatus creator =
      GroupsMemberRoleStatus._('creator');

  static List get values =>
      const ['moderator', 'editor', 'administrator', 'creator'];

  @override
  String toString() => '$value';
}

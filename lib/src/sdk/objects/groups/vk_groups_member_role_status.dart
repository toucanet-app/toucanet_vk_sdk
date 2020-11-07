/// User's credentials as community admin.
class VKGroupsMemberRoleStatus {
  final String value;

  const VKGroupsMemberRoleStatus._(this.value);

  factory VKGroupsMemberRoleStatus(value) {
    if (!values.contains(value)) return null;
    return VKGroupsMemberRoleStatus._(value);
  }

  static const VKGroupsMemberRoleStatus administrator =
      VKGroupsMemberRoleStatus._('administrator');

  static const VKGroupsMemberRoleStatus creator =
      VKGroupsMemberRoleStatus._('creator');

  static const VKGroupsMemberRoleStatus editor =
      VKGroupsMemberRoleStatus._('editor');

  static const VKGroupsMemberRoleStatus moderator =
      VKGroupsMemberRoleStatus._('moderator');

  static List get values =>
      const ['moderator', 'editor', 'administrator', 'creator'];

  @override
  String toString() => '$value';
}

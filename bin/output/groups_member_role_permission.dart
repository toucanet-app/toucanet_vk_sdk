/// .
class GroupsMemberRolePermission {
  final String value;

  const GroupsMemberRolePermission._(this.value);

  factory GroupsMemberRolePermission(value) {
    if (!values.contains(value)) return null;

    return GroupsMemberRolePermission._(value);
  }

  static const GroupsMemberRolePermission ads =
      GroupsMemberRolePermission._('ads');

  static List get values => const ['ads'];

  @override
  String toString() => '$value';
}

/// .
class VKGroupsMemberRolePermission {
  final String value;

  const VKGroupsMemberRolePermission._(this.value);

  factory VKGroupsMemberRolePermission(value) {
    if (!values.contains(value)) return null;
    return VKGroupsMemberRolePermission._(value);
  }

  static const VKGroupsMemberRolePermission ads =
      VKGroupsMemberRolePermission._('ads');

  static List get values => const ['ads'];

  @override
  String toString() => '$value';
}

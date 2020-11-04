/// Current user's role.
class AdsAccessRolePublic {
  final String value;

  const AdsAccessRolePublic._(this.value);

  factory AdsAccessRolePublic(value) {
    if (!values.contains(value)) return null;

    return AdsAccessRolePublic._(value);
  }

  static const AdsAccessRolePublic manager = AdsAccessRolePublic._('manager');

  static const AdsAccessRolePublic reports = AdsAccessRolePublic._('reports');

  static List get values => const ['manager', 'reports'];

  @override
  String toString() => '$value';
}

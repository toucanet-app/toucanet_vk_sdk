/// Current user's role.
class VKAdsAccessRolePublic {
  final String value;

  const VKAdsAccessRolePublic._(this.value);

  factory VKAdsAccessRolePublic(value) {
    if (!values.contains(value)) return null;
    return VKAdsAccessRolePublic._(value);
  }

  static const VKAdsAccessRolePublic manager =
      VKAdsAccessRolePublic._('manager');

  static const VKAdsAccessRolePublic reports =
      VKAdsAccessRolePublic._('reports');

  static List get values => const ['manager', 'reports'];

  @override
  String toString() => '$value';
}

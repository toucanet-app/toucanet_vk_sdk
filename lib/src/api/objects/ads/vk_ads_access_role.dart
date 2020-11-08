/// Current user's role.
class VKAdsAccessRole {
  final String value;

  const VKAdsAccessRole._(this.value);

  factory VKAdsAccessRole(value) {
    if (!values.contains(value)) return null;
    return VKAdsAccessRole._(value);
  }

  static const VKAdsAccessRole admin = VKAdsAccessRole._('admin');

  static const VKAdsAccessRole manager = VKAdsAccessRole._('manager');

  static const VKAdsAccessRole reports = VKAdsAccessRole._('reports');

  static List get values => const ['admin', 'manager', 'reports'];

  @override
  String toString() => '$value';
}

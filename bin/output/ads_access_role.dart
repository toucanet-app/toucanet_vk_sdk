/// Current user's role.
class AdsAccessRole {
  final String value;

  const AdsAccessRole._(this.value);

  factory AdsAccessRole(value) {
    if (!values.contains(value)) return null;

    return AdsAccessRole._(value);
  }

  static const AdsAccessRole admin = AdsAccessRole._('admin');

  static const AdsAccessRole manager = AdsAccessRole._('manager');

  static const AdsAccessRole reports = AdsAccessRole._('reports');

  static List get values => const ['admin', 'manager', 'reports'];

  @override
  String toString() => '$value';
}

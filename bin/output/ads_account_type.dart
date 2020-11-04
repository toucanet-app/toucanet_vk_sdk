/// Account type.
class AdsAccountType {
  final String value;

  const AdsAccountType._(this.value);

  factory AdsAccountType(value) {
    if (!values.contains(value)) return null;

    return AdsAccountType._(value);
  }

  static const AdsAccountType general = AdsAccountType._('general');

  static const AdsAccountType agency = AdsAccountType._('agency');

  static List get values => const ['general', 'agency'];

  @override
  String toString() => '$value';
}

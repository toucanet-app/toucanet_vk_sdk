/// Sex.
class AdsStatsSexValue {
  final String value;

  const AdsStatsSexValue._(this.value);

  factory AdsStatsSexValue(value) {
    if (!values.contains(value)) return null;

    return AdsStatsSexValue._(value);
  }

  static const AdsStatsSexValue f = AdsStatsSexValue._('f');

  static const AdsStatsSexValue m = AdsStatsSexValue._('m');

  static List get values => const ['f', 'm'];

  @override
  String toString() => '$value';
}

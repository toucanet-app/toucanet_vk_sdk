/// Sex.
class VKAdsStatsSexValue {
  final String value;

  const VKAdsStatsSexValue._(this.value);

  factory VKAdsStatsSexValue(value) {
    if (!values.contains(value)) return null;
    return VKAdsStatsSexValue._(value);
  }

  static const VKAdsStatsSexValue f = VKAdsStatsSexValue._('f');

  static const VKAdsStatsSexValue m = VKAdsStatsSexValue._('m');

  static List get values => const ['f', 'm'];

  @override
  String toString() => '$value';
}

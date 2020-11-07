/// Account type.
class VKAdsAccountType {
  final String value;

  const VKAdsAccountType._(this.value);

  factory VKAdsAccountType(value) {
    if (!values.contains(value)) return null;
    return VKAdsAccountType._(value);
  }

  static const VKAdsAccountType agency = VKAdsAccountType._('agency');

  static const VKAdsAccountType general = VKAdsAccountType._('general');

  static List get values => const ['general', 'agency'];

  @override
  String toString() => '$value';
}

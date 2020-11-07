/// Object type.
class VKAdsObjectType {
  final String value;

  const VKAdsObjectType._(this.value);

  factory VKAdsObjectType(value) {
    if (!values.contains(value)) return null;
    return VKAdsObjectType._(value);
  }

  static const VKAdsObjectType ad = VKAdsObjectType._('ad');

  static const VKAdsObjectType campaign = VKAdsObjectType._('campaign');

  static const VKAdsObjectType client = VKAdsObjectType._('client');

  static const VKAdsObjectType office = VKAdsObjectType._('office');

  static List get values => const ['ad', 'campaign', 'client', 'office'];

  @override
  String toString() => '$value';
}

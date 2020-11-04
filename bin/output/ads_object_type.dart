/// Object type.
class AdsObjectType {
  final String value;

  const AdsObjectType._(this.value);

  factory AdsObjectType(value) {
    if (!values.contains(value)) return null;

    return AdsObjectType._(value);
  }

  static const AdsObjectType ad = AdsObjectType._('ad');

  static const AdsObjectType campaign = AdsObjectType._('campaign');

  static const AdsObjectType client = AdsObjectType._('client');

  static const AdsObjectType office = AdsObjectType._('office');

  static List get values => const ['ad', 'campaign', 'client', 'office'];

  @override
  String toString() => '$value';
}

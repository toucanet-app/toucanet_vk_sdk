/// Cost type.
class AdsAdCostType {
  final int value;

  const AdsAdCostType._(this.value);

  factory AdsAdCostType(value) {
    if (!values.contains(value)) return null;

    return AdsAdCostType._(value);
  }

  static const AdsAdCostType perClicks = AdsAdCostType._(0);

  static const AdsAdCostType perImpressions = AdsAdCostType._(1);

  static const AdsAdCostType perActions = AdsAdCostType._(2);

  static const AdsAdCostType perImpressionsOptimized = AdsAdCostType._(3);

  static List get values => const [0, 1, 2, 3];

  @override
  String toString() => '$value';
}

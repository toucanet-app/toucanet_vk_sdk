/// Cost type.
class VKAdsAdCostType {
  final int value;

  const VKAdsAdCostType._(this.value);

  factory VKAdsAdCostType(value) {
    if (!values.contains(value)) return null;
    return VKAdsAdCostType._(value);
  }

  static const VKAdsAdCostType perActions = VKAdsAdCostType._(2);

  static const VKAdsAdCostType perClicks = VKAdsAdCostType._(0);

  static const VKAdsAdCostType perImpressions = VKAdsAdCostType._(1);

  static const VKAdsAdCostType perImpressionsOptimized = VKAdsAdCostType._(3);

  static List get values => const [0, 1, 2, 3];

  @override
  String toString() => '$value';
}

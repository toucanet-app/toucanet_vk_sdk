/// Information whether the item is available.
class VKMarketMarketItemAvailability {
  final int value;

  const VKMarketMarketItemAvailability._(this.value);

  factory VKMarketMarketItemAvailability(value) {
    if (!values.contains(value)) return null;
    return VKMarketMarketItemAvailability._(value);
  }

  static const VKMarketMarketItemAvailability available =
      VKMarketMarketItemAvailability._(0);

  static const VKMarketMarketItemAvailability removed =
      VKMarketMarketItemAvailability._(1);

  static const VKMarketMarketItemAvailability unavailable =
      VKMarketMarketItemAvailability._(2);

  static List get values => const [0, 1, 2];

  @override
  String toString() => '$value';
}

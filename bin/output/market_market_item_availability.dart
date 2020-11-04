/// Information whether the item is available.
class MarketMarketItemAvailability {
  final int value;

  const MarketMarketItemAvailability._(this.value);

  factory MarketMarketItemAvailability(value) {
    if (!values.contains(value)) return null;

    return MarketMarketItemAvailability._(value);
  }

  static const MarketMarketItemAvailability available = MarketMarketItemAvailability._(0);

  static const MarketMarketItemAvailability removed = MarketMarketItemAvailability._(1);

  static const MarketMarketItemAvailability unavailable = MarketMarketItemAvailability._(2);

  static List get values => const [0, 1, 2];

  @override
  String toString() => '$value';
}

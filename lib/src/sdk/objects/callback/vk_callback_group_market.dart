/// .
class VKCallbackGroupMarket {
  final int value;

  const VKCallbackGroupMarket._(this.value);

  factory VKCallbackGroupMarket(value) {
    if (!values.contains(value)) return null;
    return VKCallbackGroupMarket._(value);
  }

  static const VKCallbackGroupMarket disabled = VKCallbackGroupMarket._(0);

  static const VKCallbackGroupMarket open = VKCallbackGroupMarket._(1);

  static List get values => const [0, 1];

  @override
  String toString() => '$value';
}

/// .
class CallbackGroupMarket {
  final int value;

  const CallbackGroupMarket._(this.value);

  factory CallbackGroupMarket(value) {
    if (!values.contains(value)) return null;

    return CallbackGroupMarket._(value);
  }

  static const CallbackGroupMarket disabled = CallbackGroupMarket._(0);

  static const CallbackGroupMarket open = CallbackGroupMarket._(1);

  static List get values => const [0, 1];

  @override
  String toString() => '$value';
}

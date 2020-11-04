/// .
class BaseBoolInt {
  final int value;

  const BaseBoolInt._(this.value);

  factory BaseBoolInt(value) {
    if (!values.contains(value)) return null;

    return BaseBoolInt._(value);
  }

  static const BaseBoolInt no = BaseBoolInt._(0);

  static const BaseBoolInt yes = BaseBoolInt._(1);

  static List get values => const [0, 1];

  @override
  String toString() => '$value';
}

/// .
class VKBaseBoolInt {
  final int value;

  const VKBaseBoolInt._(this.value);

  factory VKBaseBoolInt(value) {
    if (!values.contains(value)) return null;
    return VKBaseBoolInt._(value);
  }

  static const VKBaseBoolInt no = VKBaseBoolInt._(0);

  static const VKBaseBoolInt yes = VKBaseBoolInt._(1);

  static List get values => const [0, 1];

  @override
  String toString() => '$value';
}

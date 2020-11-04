/// .
class BaseSex {
  final int value;

  const BaseSex._(this.value);

  factory BaseSex(value) {
    if (!values.contains(value)) return null;

    return BaseSex._(value);
  }

  static const BaseSex unknown = BaseSex._(0);

  static const BaseSex female = BaseSex._(1);

  static const BaseSex male = BaseSex._(2);

  static List get values => const [0, 1, 2];

  @override
  String toString() => '$value';
}

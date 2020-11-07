/// .
class VKBaseSex {
  final int value;

  const VKBaseSex._(this.value);

  factory VKBaseSex(value) {
    if (!values.contains(value)) return null;
    return VKBaseSex._(value);
  }

  static const VKBaseSex female = VKBaseSex._(1);

  static const VKBaseSex male = VKBaseSex._(2);

  static const VKBaseSex unknown = VKBaseSex._(0);

  static List get values => const [0, 1, 2];

  @override
  String toString() => '$value';
}

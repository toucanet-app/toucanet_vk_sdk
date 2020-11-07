/// Sex.
class VKAdsCriteriaSex {
  final int value;

  const VKAdsCriteriaSex._(this.value);

  factory VKAdsCriteriaSex(value) {
    if (!values.contains(value)) return null;
    return VKAdsCriteriaSex._(value);
  }

  static const VKAdsCriteriaSex any = VKAdsCriteriaSex._(0);

  static const VKAdsCriteriaSex female = VKAdsCriteriaSex._(2);

  static const VKAdsCriteriaSex male = VKAdsCriteriaSex._(1);

  static List get values => const [0, 1, 2];

  @override
  String toString() => '$value';
}

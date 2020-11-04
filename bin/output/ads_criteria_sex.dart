/// Sex.
class AdsCriteriaSex {
  final int value;

  const AdsCriteriaSex._(this.value);

  factory AdsCriteriaSex(value) {
    if (!values.contains(value)) return null;

    return AdsCriteriaSex._(value);
  }

  static const AdsCriteriaSex any = AdsCriteriaSex._(0);

  static const AdsCriteriaSex male = AdsCriteriaSex._(1);

  static const AdsCriteriaSex female = AdsCriteriaSex._(2);

  static List get values => const [0, 1, 2];

  @override
  String toString() => '$value';
}

/// Ad atatus.
class AdsAdStatus {
  final int value;

  const AdsAdStatus._(this.value);

  factory AdsAdStatus(value) {
    if (!values.contains(value)) return null;

    return AdsAdStatus._(value);
  }

  static const AdsAdStatus stopped = AdsAdStatus._(0);

  static const AdsAdStatus started = AdsAdStatus._(1);

  static const AdsAdStatus deleted = AdsAdStatus._(2);

  static List get values => const [0, 1, 2];

  @override
  String toString() => '$value';
}

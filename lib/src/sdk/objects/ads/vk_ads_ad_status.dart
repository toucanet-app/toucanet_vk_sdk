/// Ad atatus.
class VKAdsAdStatus {
  final int value;

  const VKAdsAdStatus._(this.value);

  factory VKAdsAdStatus(value) {
    if (!values.contains(value)) return null;
    return VKAdsAdStatus._(value);
  }

  static const VKAdsAdStatus deleted = VKAdsAdStatus._(2);

  static const VKAdsAdStatus started = VKAdsAdStatus._(1);

  static const VKAdsAdStatus stopped = VKAdsAdStatus._(0);

  static List get values => const [0, 1, 2];

  @override
  String toString() => '$value';
}

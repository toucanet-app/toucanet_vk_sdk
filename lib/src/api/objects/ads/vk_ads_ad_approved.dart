/// Review status.
class VKAdsAdApproved {
  final int value;

  const VKAdsAdApproved._(this.value);

  factory VKAdsAdApproved(value) {
    if (!values.contains(value)) return null;
    return VKAdsAdApproved._(value);
  }

  static const VKAdsAdApproved approved = VKAdsAdApproved._(2);

  static const VKAdsAdApproved notModerated = VKAdsAdApproved._(0);

  static const VKAdsAdApproved pendingModeration = VKAdsAdApproved._(1);

  static const VKAdsAdApproved rejected = VKAdsAdApproved._(3);

  static List get values => const [0, 1, 2, 3];

  @override
  String toString() => '$value';
}

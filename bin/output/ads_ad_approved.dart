/// Review status.
class AdsAdApproved {
  final int value;

  const AdsAdApproved._(this.value);

  factory AdsAdApproved(value) {
    if (!values.contains(value)) return null;

    return AdsAdApproved._(value);
  }

  static const AdsAdApproved notModerated = AdsAdApproved._(0);

  static const AdsAdApproved pendingModeration = AdsAdApproved._(1);

  static const AdsAdApproved approved = AdsAdApproved._(2);

  static const AdsAdApproved rejected = AdsAdApproved._(3);

  static List get values => const [0, 1, 2, 3];

  @override
  String toString() => '$value';
}

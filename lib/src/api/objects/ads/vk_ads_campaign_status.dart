/// Campaign status.
class VKAdsCampaignStatus {
  final int value;

  const VKAdsCampaignStatus._(this.value);

  factory VKAdsCampaignStatus(value) {
    if (!values.contains(value)) return null;
    return VKAdsCampaignStatus._(value);
  }

  static const VKAdsCampaignStatus deleted = VKAdsCampaignStatus._(2);

  static const VKAdsCampaignStatus started = VKAdsCampaignStatus._(1);

  static const VKAdsCampaignStatus stopped = VKAdsCampaignStatus._(0);

  static List get values => const [0, 1, 2];

  @override
  String toString() => '$value';
}

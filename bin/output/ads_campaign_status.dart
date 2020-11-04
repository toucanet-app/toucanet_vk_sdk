/// Campaign status.
class AdsCampaignStatus {
  final int value;

  const AdsCampaignStatus._(this.value);

  factory AdsCampaignStatus(value) {
    if (!values.contains(value)) return null;

    return AdsCampaignStatus._(value);
  }

  static const AdsCampaignStatus stopped = AdsCampaignStatus._(0);

  static const AdsCampaignStatus started = AdsCampaignStatus._(1);

  static const AdsCampaignStatus deleted = AdsCampaignStatus._(2);

  static List get values => const [0, 1, 2];

  @override
  String toString() => '$value';
}

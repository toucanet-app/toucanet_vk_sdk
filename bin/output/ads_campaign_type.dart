/// Campaign type.
class AdsCampaignType {
  final String value;

  const AdsCampaignType._(this.value);

  factory AdsCampaignType(value) {
    if (!values.contains(value)) return null;

    return AdsCampaignType._(value);
  }

  static const AdsCampaignType normal = AdsCampaignType._('normal');

  static const AdsCampaignType vkAppsManaged =
      AdsCampaignType._('vk_apps_managed');

  static const AdsCampaignType mobileApps = AdsCampaignType._('mobile_apps');

  static const AdsCampaignType promotedPosts =
      AdsCampaignType._('promoted_posts');

  static List get values =>
      const ['normal', 'vk_apps_managed', 'mobile_apps', 'promoted_posts'];

  @override
  String toString() => '$value';
}

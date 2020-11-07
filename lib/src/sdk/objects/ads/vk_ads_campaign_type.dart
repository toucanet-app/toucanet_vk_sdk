/// Campaign type.
class VKAdsCampaignType {
  final String value;

  const VKAdsCampaignType._(this.value);

  factory VKAdsCampaignType(value) {
    if (!values.contains(value)) return null;
    return VKAdsCampaignType._(value);
  }

  static const VKAdsCampaignType mobileApps =
      VKAdsCampaignType._('mobile_apps');

  static const VKAdsCampaignType normal = VKAdsCampaignType._('normal');

  static const VKAdsCampaignType promotedPosts =
      VKAdsCampaignType._('promoted_posts');

  static const VKAdsCampaignType vkAppsManaged =
      VKAdsCampaignType._('vk_apps_managed');

  static List get values =>
      const ['normal', 'vk_apps_managed', 'mobile_apps', 'promoted_posts'];

  @override
  String toString() => '$value';
}

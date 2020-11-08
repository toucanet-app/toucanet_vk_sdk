/// .
class VKPagesPrivacySettings {
  final int value;

  const VKPagesPrivacySettings._(this.value);

  factory VKPagesPrivacySettings(value) {
    if (!values.contains(value)) return null;
    return VKPagesPrivacySettings._(value);
  }

  static const VKPagesPrivacySettings communityManagersOnly =
      VKPagesPrivacySettings._(0);

  static const VKPagesPrivacySettings communityMembersOnly =
      VKPagesPrivacySettings._(1);

  static const VKPagesPrivacySettings everyone = VKPagesPrivacySettings._(2);

  static List get values => const [0, 1, 2];

  @override
  String toString() => '$value';
}

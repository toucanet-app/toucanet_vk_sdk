/// .
class PagesPrivacySettings {
  final int value;

  const PagesPrivacySettings._(this.value);

  factory PagesPrivacySettings(value) {
    if (!values.contains(value)) return null;

    return PagesPrivacySettings._(value);
  }

  static const PagesPrivacySettings communityManagersOnly =
      PagesPrivacySettings._(0);

  static const PagesPrivacySettings communityMembersOnly =
      PagesPrivacySettings._(1);

  static const PagesPrivacySettings everyone = PagesPrivacySettings._(2);

  static List get values => const [0, 1, 2];

  @override
  String toString() => '$value';
}

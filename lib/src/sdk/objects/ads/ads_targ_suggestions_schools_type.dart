/// School type.
class VKAdsTargSuggestionsSchoolsType {
  final String value;

  const VKAdsTargSuggestionsSchoolsType._(this.value);

  factory VKAdsTargSuggestionsSchoolsType(value) {
    if (!values.contains(value)) return null;
    return VKAdsTargSuggestionsSchoolsType._(value);
  }

  static const VKAdsTargSuggestionsSchoolsType chair =
      VKAdsTargSuggestionsSchoolsType._('chair');

  static const VKAdsTargSuggestionsSchoolsType faculty =
      VKAdsTargSuggestionsSchoolsType._('faculty');

  static const VKAdsTargSuggestionsSchoolsType school =
      VKAdsTargSuggestionsSchoolsType._('school');

  static const VKAdsTargSuggestionsSchoolsType university =
      VKAdsTargSuggestionsSchoolsType._('university');

  static List get values => const ['school', 'university', 'faculty', 'chair'];

  @override
  String toString() => '$value';
}

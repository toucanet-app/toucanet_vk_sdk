/// School type.
class AdsTargSuggestionsSchoolsType {
  final String value;

  const AdsTargSuggestionsSchoolsType._(this.value);

  factory AdsTargSuggestionsSchoolsType(value) {
    if (!values.contains(value)) return null;

    return AdsTargSuggestionsSchoolsType._(value);
  }

  static const AdsTargSuggestionsSchoolsType school =
      AdsTargSuggestionsSchoolsType._('school');

  static const AdsTargSuggestionsSchoolsType university =
      AdsTargSuggestionsSchoolsType._('university');

  static const AdsTargSuggestionsSchoolsType faculty =
      AdsTargSuggestionsSchoolsType._('faculty');

  static const AdsTargSuggestionsSchoolsType chair =
      AdsTargSuggestionsSchoolsType._('chair');

  static List get values => const ['school', 'university', 'faculty', 'chair'];

  @override
  String toString() => '$value';
}

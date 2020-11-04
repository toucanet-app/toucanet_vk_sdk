/// Information whether user can start the lead.
class LeadsCheckedResult {
  final String value;

  const LeadsCheckedResult._(this.value);

  factory LeadsCheckedResult(value) {
    if (!values.contains(value)) return null;

    return LeadsCheckedResult._(value);
  }

  static const LeadsCheckedResult checked = LeadsCheckedResult._('true');

  static const LeadsCheckedResult notChecked = LeadsCheckedResult._('false');

  static List get values => const ['true', 'false'];

  @override
  String toString() => '$value';
}

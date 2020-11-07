/// Information whether user can start the lead.
class VKLeadsCheckedResult {
  final String value;

  const VKLeadsCheckedResult._(this.value);

  factory VKLeadsCheckedResult(value) {
    if (!values.contains(value)) return null;
    return VKLeadsCheckedResult._(value);
  }

  static const VKLeadsCheckedResult checked = VKLeadsCheckedResult._('true');

  static const VKLeadsCheckedResult notChecked =
      VKLeadsCheckedResult._('false');

  static List get values => const ['true', 'false'];

  @override
  String toString() => '$value';
}

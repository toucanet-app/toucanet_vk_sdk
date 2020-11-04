/// .
class CallbackGroupOfficerRole {
  final int value;

  const CallbackGroupOfficerRole._(this.value);

  factory CallbackGroupOfficerRole(value) {
    if (!values.contains(value)) return null;

    return CallbackGroupOfficerRole._(value);
  }

  static const CallbackGroupOfficerRole none = CallbackGroupOfficerRole._(0);

  static const CallbackGroupOfficerRole moderator =
      CallbackGroupOfficerRole._(1);

  static const CallbackGroupOfficerRole editor = CallbackGroupOfficerRole._(2);

  static const CallbackGroupOfficerRole administrator =
      CallbackGroupOfficerRole._(3);

  static List get values => const [0, 1, 2, 3];

  @override
  String toString() => '$value';
}

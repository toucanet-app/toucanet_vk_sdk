/// .
class VKCallbackGroupOfficerRole {
  final int value;

  const VKCallbackGroupOfficerRole._(this.value);

  factory VKCallbackGroupOfficerRole(value) {
    if (!values.contains(value)) return null;
    return VKCallbackGroupOfficerRole._(value);
  }

  static const VKCallbackGroupOfficerRole administrator =
      VKCallbackGroupOfficerRole._(3);

  static const VKCallbackGroupOfficerRole editor =
      VKCallbackGroupOfficerRole._(2);

  static const VKCallbackGroupOfficerRole moderator =
      VKCallbackGroupOfficerRole._(1);

  static const VKCallbackGroupOfficerRole none =
      VKCallbackGroupOfficerRole._(0);

  static List get values => const [0, 1, 2, 3];

  @override
  String toString() => '$value';
}

/// Object type.
class VKUsersUserType {
  final String value;

  const VKUsersUserType._(this.value);

  factory VKUsersUserType(value) {
    if (!values.contains(value)) return null;
    return VKUsersUserType._(value);
  }

  static const VKUsersUserType profile = VKUsersUserType._('profile');

  static List get values => const ['profile'];

  @override
  String toString() => '$value';
}

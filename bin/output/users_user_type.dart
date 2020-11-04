/// Object type.
class UsersUserType {
  final String value;

  const UsersUserType._(this.value);

  factory UsersUserType(value) {
    if (!values.contains(value)) return null;

    return UsersUserType._(value);
  }

  static const UsersUserType profile = UsersUserType._('profile');

  static List get values => const ['profile'];

  @override
  String toString() => '$value';
}

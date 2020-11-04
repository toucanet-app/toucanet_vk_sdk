/// .
class UsersUserRelation {
  final int value;

  const UsersUserRelation._(this.value);

  factory UsersUserRelation(value) {
    if (!values.contains(value)) return null;

    return UsersUserRelation._(value);
  }

  static const UsersUserRelation notSpecified = UsersUserRelation._(0);

  static const UsersUserRelation single = UsersUserRelation._(1);

  static const UsersUserRelation inARelationship = UsersUserRelation._(2);

  static const UsersUserRelation engaged = UsersUserRelation._(3);

  static const UsersUserRelation married = UsersUserRelation._(4);

  static const UsersUserRelation complicated = UsersUserRelation._(5);

  static const UsersUserRelation activelySearching = UsersUserRelation._(6);

  static const UsersUserRelation inLove = UsersUserRelation._(7);

  static const UsersUserRelation inACivilUnion = UsersUserRelation._(8);

  static List get values => const [0, 1, 2, 3, 4, 5, 6, 7, 8];

  @override
  String toString() => '$value';
}

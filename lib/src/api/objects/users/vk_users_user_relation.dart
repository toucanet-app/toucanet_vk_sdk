/// .
class VKUsersUserRelation {
  final int value;

  const VKUsersUserRelation._(this.value);

  factory VKUsersUserRelation(value) {
    if (!values.contains(value)) return null;
    return VKUsersUserRelation._(value);
  }

  static const VKUsersUserRelation activelySearching = VKUsersUserRelation._(6);

  static const VKUsersUserRelation complicated = VKUsersUserRelation._(5);

  static const VKUsersUserRelation engaged = VKUsersUserRelation._(3);

  static const VKUsersUserRelation inACivilUnion = VKUsersUserRelation._(8);

  static const VKUsersUserRelation inARelationship = VKUsersUserRelation._(2);

  static const VKUsersUserRelation inLove = VKUsersUserRelation._(7);

  static const VKUsersUserRelation married = VKUsersUserRelation._(4);

  static const VKUsersUserRelation notSpecified = VKUsersUserRelation._(0);

  static const VKUsersUserRelation single = VKUsersUserRelation._(1);

  static List get values => const [0, 1, 2, 3, 4, 5, 6, 7, 8];

  @override
  String toString() => '$value';
}

/// Main section of community.
class GroupsGroupFullMainSection {
  final int value;

  const GroupsGroupFullMainSection._(this.value);

  factory GroupsGroupFullMainSection(value) {
    if (!values.contains(value)) return null;

    return GroupsGroupFullMainSection._(value);
  }

  static const GroupsGroupFullMainSection absent =
      GroupsGroupFullMainSection._(0);

  static const GroupsGroupFullMainSection photos =
      GroupsGroupFullMainSection._(1);

  static const GroupsGroupFullMainSection topics =
      GroupsGroupFullMainSection._(2);

  static const GroupsGroupFullMainSection audio =
      GroupsGroupFullMainSection._(3);

  static const GroupsGroupFullMainSection video =
      GroupsGroupFullMainSection._(4);

  static const GroupsGroupFullMainSection market =
      GroupsGroupFullMainSection._(5);

  static List get values => const [0, 1, 2, 3, 4, 5];

  @override
  String toString() => '$value';
}

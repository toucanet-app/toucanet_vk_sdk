/// .
class GroupsGroupFullAgeLimits {
  final int value;

  const GroupsGroupFullAgeLimits._(this.value);

  factory GroupsGroupFullAgeLimits(value) {
    if (!values.contains(value)) return null;

    return GroupsGroupFullAgeLimits._(value);
  }

  static const GroupsGroupFullAgeLimits no = GroupsGroupFullAgeLimits._(1);

  static const GroupsGroupFullAgeLimits overAge16 =
      GroupsGroupFullAgeLimits._(2);

  static const GroupsGroupFullAgeLimits overAge18 =
      GroupsGroupFullAgeLimits._(3);

  static List get values => const [1, 2, 3];

  @override
  String toString() => '$value';
}

/// .
class GroupsGroupAgeLimits {
  final int value;

  const GroupsGroupAgeLimits._(this.value);

  factory GroupsGroupAgeLimits(value) {
    if (!values.contains(value)) return null;

    return GroupsGroupAgeLimits._(value);
  }

  static const GroupsGroupAgeLimits unlimited = GroupsGroupAgeLimits._(1);

  static const GroupsGroupAgeLimits 16Plus = GroupsGroupAgeLimits._(2);

  static const GroupsGroupAgeLimits 18Plus = GroupsGroupAgeLimits._(3);

  static List get values => const [1, 2, 3];

  @override
  String toString() => '$value';
}

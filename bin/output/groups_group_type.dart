/// Community type.
class GroupsGroupType {
  final String value;

  const GroupsGroupType._(this.value);

  factory GroupsGroupType(value) {
    if (!values.contains(value)) return null;

    return GroupsGroupType._(value);
  }

  static const GroupsGroupType group = GroupsGroupType._('group');

  static const GroupsGroupType page = GroupsGroupType._('page');

  static const GroupsGroupType event = GroupsGroupType._('event');

  static List get values => const ['group', 'page', 'event'];

  @override
  String toString() => '$value';
}

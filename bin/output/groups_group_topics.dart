/// .
class GroupsGroupTopics {
  final int value;

  const GroupsGroupTopics._(this.value);

  factory GroupsGroupTopics(value) {
    if (!values.contains(value)) return null;

    return GroupsGroupTopics._(value);
  }

  static const GroupsGroupTopics disabled = GroupsGroupTopics._(0);

  static const GroupsGroupTopics open = GroupsGroupTopics._(1);

  static const GroupsGroupTopics limited = GroupsGroupTopics._(2);

  static List get values => const [0, 1, 2];

  @override
  String toString() => '$value';
}

/// .
class GroupsGroupDocs {
  final int value;

  const GroupsGroupDocs._(this.value);

  factory GroupsGroupDocs(value) {
    if (!values.contains(value)) return null;

    return GroupsGroupDocs._(value);
  }

  static const GroupsGroupDocs disabled = GroupsGroupDocs._(0);

  static const GroupsGroupDocs open = GroupsGroupDocs._(1);

  static const GroupsGroupDocs limited = GroupsGroupDocs._(2);

  static List get values => const [0, 1, 2];

  @override
  String toString() => '$value';
}

/// .
class GroupsGroupWiki {
  final int value;

  const GroupsGroupWiki._(this.value);

  factory GroupsGroupWiki(value) {
    if (!values.contains(value)) return null;

    return GroupsGroupWiki._(value);
  }

  static const GroupsGroupWiki disabled = GroupsGroupWiki._(0);

  static const GroupsGroupWiki open = GroupsGroupWiki._(1);

  static const GroupsGroupWiki limited = GroupsGroupWiki._(2);

  static List get values => const [0, 1, 2];

  @override
  String toString() => '$value';
}

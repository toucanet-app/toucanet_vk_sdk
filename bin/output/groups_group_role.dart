/// .
class GroupsGroupRole {
  final String value;

  const GroupsGroupRole._(this.value);

  factory GroupsGroupRole(value) {
    if (!values.contains(value)) return null;

    return GroupsGroupRole._(value);
  }

  static const GroupsGroupRole moderator = GroupsGroupRole._('moderator');

  static const GroupsGroupRole editor = GroupsGroupRole._('editor');

  static const GroupsGroupRole administrator =
      GroupsGroupRole._('administrator');

  static const GroupsGroupRole advertiser = GroupsGroupRole._('advertiser');

  static List get values =>
      const ['moderator', 'editor', 'administrator', 'advertiser'];

  @override
  String toString() => '$value';
}

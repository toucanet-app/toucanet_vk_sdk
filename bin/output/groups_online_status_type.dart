/// Type of online status of group.
class GroupsOnlineStatusType {
  final String value;

  const GroupsOnlineStatusType._(this.value);

  factory GroupsOnlineStatusType(value) {
    if (!values.contains(value)) return null;

    return GroupsOnlineStatusType._(value);
  }

  static const GroupsOnlineStatusType none = GroupsOnlineStatusType._('none');

  static const GroupsOnlineStatusType online =
      GroupsOnlineStatusType._('online');

  static const GroupsOnlineStatusType answerMark =
      GroupsOnlineStatusType._('answer_mark');

  static List get values => const ['none', 'online', 'answer_mark'];

  @override
  String toString() => '$value';
}

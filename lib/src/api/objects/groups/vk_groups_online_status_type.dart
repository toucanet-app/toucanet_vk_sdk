/// Type of online status of group.
class VKGroupsOnlineStatusType {
  final String value;

  const VKGroupsOnlineStatusType._(this.value);

  factory VKGroupsOnlineStatusType(value) {
    if (!values.contains(value)) return null;
    return VKGroupsOnlineStatusType._(value);
  }

  static const VKGroupsOnlineStatusType answerMark =
      VKGroupsOnlineStatusType._('answer_mark');

  static const VKGroupsOnlineStatusType none =
      VKGroupsOnlineStatusType._('none');

  static const VKGroupsOnlineStatusType online =
      VKGroupsOnlineStatusType._('online');

  static List get values => const ['none', 'online', 'answer_mark'];

  @override
  String toString() => '$value';
}

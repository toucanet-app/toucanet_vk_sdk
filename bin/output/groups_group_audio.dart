/// .
class GroupsGroupAudio {
  final int value;

  const GroupsGroupAudio._(this.value);

  factory GroupsGroupAudio(value) {
    if (!values.contains(value)) return null;

    return GroupsGroupAudio._(value);
  }

  static const GroupsGroupAudio disabled = GroupsGroupAudio._(0);

  static const GroupsGroupAudio open = GroupsGroupAudio._(1);

  static const GroupsGroupAudio limited = GroupsGroupAudio._(2);

  static List get values => const [0, 1, 2];

  @override
  String toString() => '$value';
}

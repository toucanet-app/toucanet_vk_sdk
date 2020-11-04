/// .
class GroupsGroupVideo {
  final int value;

  const GroupsGroupVideo._(this.value);

  factory GroupsGroupVideo(value) {
    if (!values.contains(value)) return null;

    return GroupsGroupVideo._(value);
  }

  static const GroupsGroupVideo disabled = GroupsGroupVideo._(0);

  static const GroupsGroupVideo open = GroupsGroupVideo._(1);

  static const GroupsGroupVideo limited = GroupsGroupVideo._(2);

  static List get values => const [0, 1, 2];

  @override
  String toString() => '$value';
}

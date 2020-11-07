/// .
class VKGroupsGroupVideo {
  final int value;

  const VKGroupsGroupVideo._(this.value);

  factory VKGroupsGroupVideo(value) {
    if (!values.contains(value)) return null;
    return VKGroupsGroupVideo._(value);
  }

  static const VKGroupsGroupVideo disabled = VKGroupsGroupVideo._(0);

  static const VKGroupsGroupVideo limited = VKGroupsGroupVideo._(2);

  static const VKGroupsGroupVideo open = VKGroupsGroupVideo._(1);

  static List get values => const [0, 1, 2];

  @override
  String toString() => '$value';
}

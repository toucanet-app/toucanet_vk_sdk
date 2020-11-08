/// .
class VKGroupsGroupAudio {
  final int value;

  const VKGroupsGroupAudio._(this.value);

  factory VKGroupsGroupAudio(value) {
    if (!values.contains(value)) return null;
    return VKGroupsGroupAudio._(value);
  }

  static const VKGroupsGroupAudio disabled = VKGroupsGroupAudio._(0);

  static const VKGroupsGroupAudio limited = VKGroupsGroupAudio._(2);

  static const VKGroupsGroupAudio open = VKGroupsGroupAudio._(1);

  static List get values => const [0, 1, 2];

  @override
  String toString() => '$value';
}

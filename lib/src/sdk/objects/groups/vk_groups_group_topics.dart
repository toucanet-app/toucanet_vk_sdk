/// .
class VKGroupsGroupTopics {
  final int value;

  const VKGroupsGroupTopics._(this.value);

  factory VKGroupsGroupTopics(value) {
    if (!values.contains(value)) return null;
    return VKGroupsGroupTopics._(value);
  }

  static const VKGroupsGroupTopics disabled = VKGroupsGroupTopics._(0);

  static const VKGroupsGroupTopics limited = VKGroupsGroupTopics._(2);

  static const VKGroupsGroupTopics open = VKGroupsGroupTopics._(1);

  static List get values => const [0, 1, 2];

  @override
  String toString() => '$value';
}

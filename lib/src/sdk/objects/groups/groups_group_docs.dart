/// .
class VKGroupsGroupDocs {
  final int value;

  const VKGroupsGroupDocs._(this.value);

  factory VKGroupsGroupDocs(value) {
    if (!values.contains(value)) return null;
    return VKGroupsGroupDocs._(value);
  }

  static const VKGroupsGroupDocs disabled = VKGroupsGroupDocs._(0);

  static const VKGroupsGroupDocs limited = VKGroupsGroupDocs._(2);

  static const VKGroupsGroupDocs open = VKGroupsGroupDocs._(1);

  static List get values => const [0, 1, 2];

  @override
  String toString() => '$value';
}

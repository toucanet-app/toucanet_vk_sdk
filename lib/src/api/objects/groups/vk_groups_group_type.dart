/// Community type.
class VKGroupsGroupType {
  final String value;

  const VKGroupsGroupType._(this.value);

  factory VKGroupsGroupType(value) {
    if (!values.contains(value)) return null;
    return VKGroupsGroupType._(value);
  }

  static const VKGroupsGroupType event = VKGroupsGroupType._('event');

  static const VKGroupsGroupType group = VKGroupsGroupType._('group');

  static const VKGroupsGroupType page = VKGroupsGroupType._('page');

  static List get values => const ['group', 'page', 'event'];

  @override
  String toString() => '$value';
}

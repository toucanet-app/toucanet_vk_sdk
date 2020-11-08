/// .
class VKGroupsGroupAccess {
  final int value;

  const VKGroupsGroupAccess._(this.value);

  factory VKGroupsGroupAccess(value) {
    if (!values.contains(value)) return null;
    return VKGroupsGroupAccess._(value);
  }

  static const VKGroupsGroupAccess closed = VKGroupsGroupAccess._(1);

  static const VKGroupsGroupAccess open = VKGroupsGroupAccess._(0);

  static const VKGroupsGroupAccess private = VKGroupsGroupAccess._(2);

  static List get values => const [0, 1, 2];

  @override
  String toString() => '$value';
}

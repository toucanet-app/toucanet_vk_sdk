/// Information whether community is closed.
class VKGroupsGroupIsClosed {
  final int value;

  const VKGroupsGroupIsClosed._(this.value);

  factory VKGroupsGroupIsClosed(value) {
    if (!values.contains(value)) return null;
    return VKGroupsGroupIsClosed._(value);
  }

  static const VKGroupsGroupIsClosed closed = VKGroupsGroupIsClosed._(1);

  static const VKGroupsGroupIsClosed open = VKGroupsGroupIsClosed._(0);

  static const VKGroupsGroupIsClosed private = VKGroupsGroupIsClosed._(2);

  static List get values => const [0, 1, 2];

  @override
  String toString() => '$value';
}

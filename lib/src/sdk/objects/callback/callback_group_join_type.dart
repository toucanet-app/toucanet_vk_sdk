/// .
class VKCallbackGroupJoinType {
  final String value;

  const VKCallbackGroupJoinType._(this.value);

  factory VKCallbackGroupJoinType(value) {
    if (!values.contains(value)) return null;
    return VKCallbackGroupJoinType._(value);
  }

  static const VKCallbackGroupJoinType accepted =
      VKCallbackGroupJoinType._('accepted');

  static const VKCallbackGroupJoinType approved =
      VKCallbackGroupJoinType._('approved');

  static const VKCallbackGroupJoinType join = VKCallbackGroupJoinType._('join');

  static const VKCallbackGroupJoinType request =
      VKCallbackGroupJoinType._('request');

  static const VKCallbackGroupJoinType unsure =
      VKCallbackGroupJoinType._('unsure');

  static List get values =>
      const ['join', 'unsure', 'accepted', 'approved', 'request'];

  @override
  String toString() => '$value';
}

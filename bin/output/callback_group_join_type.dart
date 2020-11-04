/// .
class CallbackGroupJoinType {
  final String value;

  const CallbackGroupJoinType._(this.value);

  factory CallbackGroupJoinType(value) {
    if (!values.contains(value)) return null;

    return CallbackGroupJoinType._(value);
  }

  static const CallbackGroupJoinType join = CallbackGroupJoinType._('join');

  static const CallbackGroupJoinType unsure = CallbackGroupJoinType._('unsure');

  static const CallbackGroupJoinType accepted = CallbackGroupJoinType._('accepted');

  static const CallbackGroupJoinType approved = CallbackGroupJoinType._('approved');

  static const CallbackGroupJoinType request = CallbackGroupJoinType._('request');

  static List get values => const ['join', 'unsure', 'accepted', 'approved', 'request'];

  @override
  String toString() => '$value';
}

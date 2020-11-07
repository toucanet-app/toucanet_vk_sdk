/// Sort type.
class VKBoardDefaultOrder {
  final int value;

  const VKBoardDefaultOrder._(this.value);

  factory VKBoardDefaultOrder(value) {
    if (!values.contains(value)) return null;
    return VKBoardDefaultOrder._(value);
  }

  static const VKBoardDefaultOrder ascCreated = VKBoardDefaultOrder._(-2);

  static const VKBoardDefaultOrder ascUpdated = VKBoardDefaultOrder._(-1);

  static const VKBoardDefaultOrder descCreated = VKBoardDefaultOrder._(2);

  static const VKBoardDefaultOrder descUpdated = VKBoardDefaultOrder._(1);

  static List get values => const [1, 2, -1, -2];

  @override
  String toString() => '$value';
}

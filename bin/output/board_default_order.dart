/// Sort type.
class BoardDefaultOrder {
  final int value;

  const BoardDefaultOrder._(this.value);

  factory BoardDefaultOrder(value) {
    if (!values.contains(value)) return null;

    return BoardDefaultOrder._(value);
  }

  static const BoardDefaultOrder descUpdated = BoardDefaultOrder._(1);

  static const BoardDefaultOrder descCreated = BoardDefaultOrder._(2);

  static const BoardDefaultOrder ascUpdated = BoardDefaultOrder._(-1);

  static const BoardDefaultOrder ascCreated = BoardDefaultOrder._(-2);

  static List get values => const [1, 2, -1, -2];

  @override
  String toString() => '$value';
}

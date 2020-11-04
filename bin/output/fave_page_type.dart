/// .
class FavePageType {
  final String value;

  const FavePageType._(this.value);

  factory FavePageType(value) {
    if (!values.contains(value)) return null;

    return FavePageType._(value);
  }

  static const FavePageType user = FavePageType._('user');

  static const FavePageType group = FavePageType._('group');

  static const FavePageType hints = FavePageType._('hints');

  static List get values => const ['user', 'group', 'hints'];

  @override
  String toString() => '$value';
}

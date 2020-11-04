/// .
class BasePropertyExists {
  final int value;

  const BasePropertyExists._(this.value);

  factory BasePropertyExists(value) {
    if (!values.contains(value)) return null;

    return BasePropertyExists._(value);
  }

  static const BasePropertyExists PropertyExists = BasePropertyExists._(1);

  static List get values => const [1];

  @override
  String toString() => '$value';
}

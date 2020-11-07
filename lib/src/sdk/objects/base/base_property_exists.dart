/// .
class VKBasePropertyExists {
  final int value;

  const VKBasePropertyExists._(this.value);

  factory VKBasePropertyExists(value) {
    if (!values.contains(value)) return null;
    return VKBasePropertyExists._(value);
  }

  static const VKBasePropertyExists PropertyExists = VKBasePropertyExists._(1);

  static List get values => const [1];

  @override
  String toString() => '$value';
}

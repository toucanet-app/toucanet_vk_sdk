/// Button style.
class BaseLinkButtonStyle {
  final String value;

  const BaseLinkButtonStyle._(this.value);

  factory BaseLinkButtonStyle(value) {
    if (!values.contains(value)) return null;

    return BaseLinkButtonStyle._(value);
  }

  

  static List get values => const [];

  @override
  String toString() => '$value';
}

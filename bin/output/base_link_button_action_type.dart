/// Action type.
class BaseLinkButtonActionType {
  final String value;

  const BaseLinkButtonActionType._(this.value);

  factory BaseLinkButtonActionType(value) {
    if (!values.contains(value)) return null;

    return BaseLinkButtonActionType._(value);
  }

  static const BaseLinkButtonActionType openUrl = BaseLinkButtonActionType._('open_url');

  static List get values => const ['open_url'];

  @override
  String toString() => '$value';
}

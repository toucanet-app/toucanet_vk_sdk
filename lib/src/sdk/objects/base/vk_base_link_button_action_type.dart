/// Action type.
class VKBaseLinkButtonActionType {
  final String value;

  const VKBaseLinkButtonActionType._(this.value);

  factory VKBaseLinkButtonActionType(value) {
    if (!values.contains(value)) return null;
    return VKBaseLinkButtonActionType._(value);
  }

  static const VKBaseLinkButtonActionType openUrl =
      VKBaseLinkButtonActionType._('open_url');

  static List get values => const ['open_url'];

  @override
  String toString() => '$value';
}

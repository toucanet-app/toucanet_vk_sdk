/// Status representation.
class BaseLinkProductStatus {
  final String value;

  const BaseLinkProductStatus._(this.value);

  factory BaseLinkProductStatus(value) {
    if (!values.contains(value)) return null;

    return BaseLinkProductStatus._(value);
  }

  static const BaseLinkProductStatus active = BaseLinkProductStatus._('active');

  static const BaseLinkProductStatus blocked =
      BaseLinkProductStatus._('blocked');

  static const BaseLinkProductStatus sold = BaseLinkProductStatus._('sold');

  static const BaseLinkProductStatus deleted =
      BaseLinkProductStatus._('deleted');

  static const BaseLinkProductStatus archived =
      BaseLinkProductStatus._('archived');

  static List get values =>
      const ['active', 'blocked', 'sold', 'deleted', 'archived'];

  @override
  String toString() => '$value';
}

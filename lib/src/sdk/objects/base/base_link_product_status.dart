/// Status representation.
class VKBaseLinkProductStatus {
  final String value;

  const VKBaseLinkProductStatus._(this.value);

  factory VKBaseLinkProductStatus(value) {
    if (!values.contains(value)) return null;
    return VKBaseLinkProductStatus._(value);
  }

  static const VKBaseLinkProductStatus active =
      VKBaseLinkProductStatus._('active');

  static const VKBaseLinkProductStatus archived =
      VKBaseLinkProductStatus._('archived');

  static const VKBaseLinkProductStatus blocked =
      VKBaseLinkProductStatus._('blocked');

  static const VKBaseLinkProductStatus deleted =
      VKBaseLinkProductStatus._('deleted');

  static const VKBaseLinkProductStatus sold = VKBaseLinkProductStatus._('sold');

  static List get values =>
      const ['active', 'blocked', 'sold', 'deleted', 'archived'];

  @override
  String toString() => '$value';
}

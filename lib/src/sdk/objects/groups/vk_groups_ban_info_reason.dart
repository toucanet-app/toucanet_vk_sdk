/// Ban reason.
class VKGroupsBanInfoReason {
  final int value;

  const VKGroupsBanInfoReason._(this.value);

  factory VKGroupsBanInfoReason(value) {
    if (!values.contains(value)) return null;
    return VKGroupsBanInfoReason._(value);
  }

  static const VKGroupsBanInfoReason flood = VKGroupsBanInfoReason._(4);

  static const VKGroupsBanInfoReason other = VKGroupsBanInfoReason._(0);

  static const VKGroupsBanInfoReason spam = VKGroupsBanInfoReason._(1);

  static const VKGroupsBanInfoReason strongLanguage =
      VKGroupsBanInfoReason._(3);

  static const VKGroupsBanInfoReason verbalAbuse = VKGroupsBanInfoReason._(2);

  static List get values => const [0, 1, 2, 3, 4];

  @override
  String toString() => '$value';
}

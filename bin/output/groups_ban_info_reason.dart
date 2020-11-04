/// Ban reason.
class GroupsBanInfoReason {
  final int value;

  const GroupsBanInfoReason._(this.value);

  factory GroupsBanInfoReason(value) {
    if (!values.contains(value)) return null;

    return GroupsBanInfoReason._(value);
  }

  static const GroupsBanInfoReason other = GroupsBanInfoReason._(0);

  static const GroupsBanInfoReason spam = GroupsBanInfoReason._(1);

  static const GroupsBanInfoReason verbalAbuse = GroupsBanInfoReason._(2);

  static const GroupsBanInfoReason strongLanguage = GroupsBanInfoReason._(3);

  static const GroupsBanInfoReason flood = GroupsBanInfoReason._(4);

  static List get values => const [0, 1, 2, 3, 4];

  @override
  String toString() => '$value';
}

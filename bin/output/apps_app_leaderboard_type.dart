/// Leaderboard type.
class AppsAppLeaderboardType {
  final int value;

  const AppsAppLeaderboardType._(this.value);

  factory AppsAppLeaderboardType(value) {
    if (!values.contains(value)) return null;

    return AppsAppLeaderboardType._(value);
  }

  static const AppsAppLeaderboardType notSupported = AppsAppLeaderboardType._(0);

  static const AppsAppLeaderboardType levels = AppsAppLeaderboardType._(1);

  static const AppsAppLeaderboardType points = AppsAppLeaderboardType._(2);

  static List get values => const [0, 1, 2];

  @override
  String toString() => '$value';
}

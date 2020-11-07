/// Leaderboard type.
class VKAppsAppLeaderboardType {
  final int value;

  const VKAppsAppLeaderboardType._(this.value);

  factory VKAppsAppLeaderboardType(value) {
    if (!values.contains(value)) return null;
    return VKAppsAppLeaderboardType._(value);
  }

  static const VKAppsAppLeaderboardType levels = VKAppsAppLeaderboardType._(1);

  static const VKAppsAppLeaderboardType notSupported =
      VKAppsAppLeaderboardType._(0);

  static const VKAppsAppLeaderboardType points = VKAppsAppLeaderboardType._(2);

  static List get values => const [0, 1, 2];

  @override
  String toString() => '$value';
}

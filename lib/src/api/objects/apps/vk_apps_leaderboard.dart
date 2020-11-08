import 'package:meta/meta.dart';

class VKAppsLeaderboard {
  /// Level.
  final int level;

  /// Points number.
  final int points;

  /// Score number.
  final int score;

  /// User ID.
  final int userId;

  const VKAppsLeaderboard({
    this.level,
    this.points,
    this.score,
    @required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'level': level,
      'points': points,
      'score': score,
      'user_id': userId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAppsLeaderboard.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAppsLeaderboard(
      level: map['level'] as int,
      points: map['points'] as int,
      score: map['score'] as int,
      userId: map['user_id'] as int,
    );
  }
}

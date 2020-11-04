import 'ads_stats_format.dart';
import 'ads_object_type.dart';
import 'ads_stats_views_times.dart';

class AdsStats {
  /// Object ID.
  final int id;

  final AdsStatsFormat stats;

  final AdsObjectType type;

  final AdsStatsViewsTimes viewsTimes;

  const AdsStats({
    this.id,
    this.stats,
    this.type,
    this.viewsTimes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'stats': stats?.toMap(),
      'type': type?.value,
      'views_times': viewsTimes?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory AdsStats.fromMap(Map<String, dynamic> map) {
    return AdsStats(
      id: map['id'] as int,
      stats: AdsStatsFormat.fromMap(map['stats']),
      type: AdsObjectType(map['type']),
      viewsTimes: AdsStatsViewsTimes.fromMap(map['views_times']),
    );
  }
}

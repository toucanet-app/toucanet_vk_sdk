import 'ads_object_type.dart';
import 'ads_stats_format.dart';
import 'ads_stats_views_times.dart';

class VKAdsStats {
  /// Object ID.
  final int id;

  final VKAdsStatsFormat stats;

  final VKAdsObjectType type;

  final VKAdsStatsViewsTimes viewsTimes;

  const VKAdsStats({
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

  factory VKAdsStats.fromMap(Map<String, dynamic> map) {
    return VKAdsStats(
      id: map['id'] as int,
      stats: VKAdsStatsFormat.fromMap(map['stats']),
      type: VKAdsObjectType(map['type']),
      viewsTimes: VKAdsStatsViewsTimes.fromMap(map['views_times']),
    );
  }
}

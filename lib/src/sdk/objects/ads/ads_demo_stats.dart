import 'ads_demostats_format.dart';
import 'ads_object_type.dart';

class VKAdsDemoStats {
  /// Object ID.
  final int id;

  final VKAdsDemostatsFormat stats;

  final VKAdsObjectType type;

  const VKAdsDemoStats({
    this.id,
    this.stats,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'stats': stats?.toMap(),
      'type': type?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsDemoStats.fromMap(Map<String, dynamic> map) {
    return VKAdsDemoStats(
      id: map['id'] as int,
      stats: VKAdsDemostatsFormat.fromMap(map['stats']),
      type: VKAdsObjectType(map['type']),
    );
  }
}

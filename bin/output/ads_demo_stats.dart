import 'ads_demostats_format.dart';
import 'ads_object_type.dart';

class AdsDemoStats {
  /// Object ID.
  final int id;

  final AdsDemostatsFormat stats;

  final AdsObjectType type;

  const AdsDemoStats({
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

  factory AdsDemoStats.fromMap(Map<String, dynamic> map) {
    return AdsDemoStats(
      id: map['id'] as int,
      stats: AdsDemostatsFormat.fromMap(map['stats']),
      type: AdsObjectType(map['type']),
    );
  }
}

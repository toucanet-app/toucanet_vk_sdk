import 'utils_stats_extended.dart';

class UtilsLinkStatsExtended {
  /// Link key (characters after vk.cc/).
  final String key;

  final List<UtilsStatsExtended> stats;

  const UtilsLinkStatsExtended({
    this.key,
    this.stats,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'stats': stats?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory UtilsLinkStatsExtended.fromMap(Map<String, dynamic> map) {
    return UtilsLinkStatsExtended(
      key: map['key'] as String,
      stats: map['stats']?.map((item) => UtilsStatsExtended.fromMap(item)),
    );
  }
}

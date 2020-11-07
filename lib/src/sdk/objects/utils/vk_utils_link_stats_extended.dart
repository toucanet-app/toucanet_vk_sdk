import 'vk_utils_stats_extended.dart';

class VKUtilsLinkStatsExtended {
  /// Link key (characters after vk.cc/).
  final String key;

  final List<VKUtilsStatsExtended> stats;

  const VKUtilsLinkStatsExtended({
    this.key,
    this.stats,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'stats': stats
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKUtilsLinkStatsExtended.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKUtilsLinkStatsExtended(
      key: map['key'] as String,
      stats: map['stats']
          ?.map<VKUtilsStatsExtended>(
            (item) => VKUtilsStatsExtended.fromMap(item),
          )
          ?.toList(),
    );
  }
}

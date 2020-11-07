import 'utils_stats_extended.dart';

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
      'stats': stats?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKUtilsLinkStatsExtended.fromMap(Map<String, dynamic> map) {
    return VKUtilsLinkStatsExtended(
      key: map['key'] as String,
      stats: map['stats']?.map((item) => VKUtilsStatsExtended.fromMap(item)),
    );
  }
}

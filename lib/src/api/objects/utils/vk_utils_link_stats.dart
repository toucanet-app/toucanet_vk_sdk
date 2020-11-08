import 'vk_utils_stats.dart';

class VKUtilsLinkStats {
  /// Link key (characters after vk.cc/).
  final String key;

  final List<VKUtilsStats> stats;

  const VKUtilsLinkStats({
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

  factory VKUtilsLinkStats.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKUtilsLinkStats(
      key: map['key'] as String,
      stats: map['stats']
          ?.map<VKUtilsStats>(
            (item) => VKUtilsStats.fromMap(item),
          )
          ?.toList(),
    );
  }
}

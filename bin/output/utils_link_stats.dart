import 'utils_stats.dart';

class UtilsLinkStats {
  /// Link key (characters after vk.cc/).
  final String key;

  final List<UtilsStats> stats;

  const UtilsLinkStats({
    this.key,
    this.stats,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'stats': stats?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory UtilsLinkStats.fromMap(Map<String, dynamic> map) {
    return UtilsLinkStats(
      key: map['key'] as String,
      stats: map['stats']?.map((item) => UtilsStats.fromMap(item)),
    );
  }
}

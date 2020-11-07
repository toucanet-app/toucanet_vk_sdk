import '../../objects/vk_objects.dart';

class VKUtilsGetLinkStatsResponse {
  /// Link key (characters after vk.cc/).
  final String key;

  final List<VKUtilsStats> stats;

  const VKUtilsGetLinkStatsResponse({
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

  factory VKUtilsGetLinkStatsResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKUtilsGetLinkStatsResponse(
      key: map['key'] as String,
      stats: map['stats']
          ?.map<VKUtilsStats>(
            (item) => VKUtilsStats.fromMap(item),
          )
          ?.toList(),
    );
  }
}

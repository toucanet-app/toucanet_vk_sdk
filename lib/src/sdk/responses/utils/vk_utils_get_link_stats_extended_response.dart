import '../../objects/vk_objects.dart';

class VKUtilsGetLinkStatsExtendedResponse {
  /// Link key (characters after vk.cc/).
  final String key;

  final List<VKUtilsStatsExtended> stats;

  const VKUtilsGetLinkStatsExtendedResponse({
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

  factory VKUtilsGetLinkStatsExtendedResponse.fromMap(
      Map<String, dynamic> map) {
    if (map == null) return null;

    return VKUtilsGetLinkStatsExtendedResponse(
      key: map['key'] as String,
      stats: map['stats']
          ?.map<VKUtilsStatsExtended>(
            (item) => VKUtilsStatsExtended.fromMap(item),
          )
          ?.toList(),
    );
  }
}

import '../../objects/vk_objects.dart';

class VKStatsGetPostReachResponse {
  final List<VKStatsWallpostStat> statsGetPostReachResponse;

  const VKStatsGetPostReachResponse({
    this.statsGetPostReachResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'stats_getPostReach_response':
          statsGetPostReachResponse?.map((item) => item?.toMap())?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKStatsGetPostReachResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKStatsGetPostReachResponse(
      statsGetPostReachResponse: map['stats_getPostReach_response']
          ?.map((item) => VKStatsWallpostStat.fromMap(item))
          ?.toList(),
    );
  }
}

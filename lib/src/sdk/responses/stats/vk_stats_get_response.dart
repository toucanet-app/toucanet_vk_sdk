import '../../objects/vk_objects.dart';

class VKStatsGetResponse {
  final List<VKStatsPeriod> statsGetResponse;

  const VKStatsGetResponse({
    this.statsGetResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'stats_get_response':
          statsGetResponse?.map((item) => item?.toMap())?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKStatsGetResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKStatsGetResponse(
      statsGetResponse: map['stats_get_response']
          ?.map((item) => VKStatsPeriod.fromMap(item))
          ?.toList(),
    );
  }
}

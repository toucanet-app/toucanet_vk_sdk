import '../../objects/vk_objects.dart';

class VKAdsGetStatisticsResponse {
  final List<VKAdsStats> adsGetStatisticsResponse;

  const VKAdsGetStatisticsResponse({
    this.adsGetStatisticsResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ads_getStatistics_response': adsGetStatisticsResponse
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsGetStatisticsResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAdsGetStatisticsResponse(
      adsGetStatisticsResponse: map['ads_getStatistics_response']
          ?.map<List<VKAdsStats>>(
            (item) => VKAdsStats.fromMap(item),
          )
          ?.toList(),
    );
  }
}

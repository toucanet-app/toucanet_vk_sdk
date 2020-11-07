import '../../objects/vk_objects.dart';

class VKAdsGetStatisticsResponse {
  final List<VKAdsStats> adsGetStatisticsResponse;

  const VKAdsGetStatisticsResponse({
    this.adsGetStatisticsResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ads_getStatistics_response':
          adsGetStatisticsResponse?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsGetStatisticsResponse.fromMap(Map<String, dynamic> map) {
    return VKAdsGetStatisticsResponse(
      adsGetStatisticsResponse: map['ads_getStatistics_response']
          ?.map((item) => VKAdsStats.fromMap(item)),
    );
  }
}
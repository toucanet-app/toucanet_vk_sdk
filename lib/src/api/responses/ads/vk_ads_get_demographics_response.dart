import '../../objects/vk_objects.dart';

class VKAdsGetDemographicsResponse {
  final List<VKAdsDemoStats> adsGetDemographicsResponse;

  const VKAdsGetDemographicsResponse({
    this.adsGetDemographicsResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ads_getDemographics_response': adsGetDemographicsResponse
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsGetDemographicsResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAdsGetDemographicsResponse(
      adsGetDemographicsResponse: map['ads_getDemographics_response']
          ?.map<List<VKAdsDemoStats>>(
            (item) => VKAdsDemoStats.fromMap(item),
          )
          ?.toList(),
    );
  }
}

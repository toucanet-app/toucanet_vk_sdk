import '../../objects/vk_objects.dart';

class VKAdsGetAdsTargetingResponse {
  final List<VKAdsTargSettings> adsGetAdsTargetingResponse;

  const VKAdsGetAdsTargetingResponse({
    this.adsGetAdsTargetingResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ads_getAdsTargeting_response':
          adsGetAdsTargetingResponse?.map((item) => item?.toMap())?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsGetAdsTargetingResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAdsGetAdsTargetingResponse(
      adsGetAdsTargetingResponse: map['ads_getAdsTargeting_response']
          ?.map((item) => VKAdsTargSettings.fromMap(item))
          ?.toList(),
    );
  }
}

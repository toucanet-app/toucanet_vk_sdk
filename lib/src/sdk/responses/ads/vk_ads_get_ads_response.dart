import '../../objects/vk_objects.dart';

class VKAdsGetAdsResponse {
  final List<VKAdsAd> adsGetAdsResponse;

  const VKAdsGetAdsResponse({
    this.adsGetAdsResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ads_getAds_response':
          adsGetAdsResponse?.map((item) => item?.toMap())?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsGetAdsResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAdsGetAdsResponse(
      adsGetAdsResponse: map['ads_getAds_response']
          ?.map((item) => VKAdsAd.fromMap(item))
          ?.toList(),
    );
  }
}

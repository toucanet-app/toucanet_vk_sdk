import '../../objects/vk_objects.dart';

class VKAdsGetAdsLayoutResponse {
  final List<VKAdsAdLayout> adsGetAdsLayoutResponse;

  const VKAdsGetAdsLayoutResponse({
    this.adsGetAdsLayoutResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ads_getAdsLayout_response': adsGetAdsLayoutResponse
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsGetAdsLayoutResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAdsGetAdsLayoutResponse(
      adsGetAdsLayoutResponse: map['ads_getAdsLayout_response']
          ?.map<List<VKAdsAdLayout>>(
            (item) => VKAdsAdLayout.fromMap(item),
          )
          ?.toList(),
    );
  }
}

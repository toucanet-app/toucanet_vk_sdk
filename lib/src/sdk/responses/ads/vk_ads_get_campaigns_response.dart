import '../../objects/vk_objects.dart';

class VKAdsGetCampaignsResponse {
  final List<VKAdsCampaign> adsGetCampaignsResponse;

  const VKAdsGetCampaignsResponse({
    this.adsGetCampaignsResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ads_getCampaigns_response': adsGetCampaignsResponse
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsGetCampaignsResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAdsGetCampaignsResponse(
      adsGetCampaignsResponse: map['ads_getCampaigns_response']
          ?.map<List<VKAdsCampaign>>(
            (item) => VKAdsCampaign.fromMap(item),
          )
          ?.toList(),
    );
  }
}

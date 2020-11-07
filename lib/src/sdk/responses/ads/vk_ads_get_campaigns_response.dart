import '../../objects/vk_objects.dart';

class VKAdsGetCampaignsResponse {
  final List<VKAdsCampaign> adsGetCampaignsResponse;

  const VKAdsGetCampaignsResponse({
    this.adsGetCampaignsResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ads_getCampaigns_response':
          adsGetCampaignsResponse?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsGetCampaignsResponse.fromMap(Map<String, dynamic> map) {
    return VKAdsGetCampaignsResponse(
      adsGetCampaignsResponse: map['ads_getCampaigns_response']
          ?.map((item) => VKAdsCampaign.fromMap(item)),
    );
  }
}

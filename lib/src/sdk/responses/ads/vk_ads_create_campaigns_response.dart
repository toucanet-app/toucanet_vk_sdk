class VKAdsCreateCampaignsResponse {
  /// The list of Campaign ID.
  final List<int> adsCreateCampaignsResponse;

  const VKAdsCreateCampaignsResponse({
    this.adsCreateCampaignsResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ads_createCampaigns_response': adsCreateCampaignsResponse,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsCreateCampaignsResponse.fromMap(Map<String, dynamic> map) {
    return VKAdsCreateCampaignsResponse(
      adsCreateCampaignsResponse:
          map['ads_createCampaigns_response'] as List<int>,
    );
  }
}

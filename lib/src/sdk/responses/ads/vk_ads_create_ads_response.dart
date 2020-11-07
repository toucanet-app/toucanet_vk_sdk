class VKAdsCreateAdsResponse {
  /// The list of Ad ID.
  final List<int> adsCreateAdsResponse;

  const VKAdsCreateAdsResponse({
    this.adsCreateAdsResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ads_createAds_response': adsCreateAdsResponse,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsCreateAdsResponse.fromMap(Map<String, dynamic> map) {
    return VKAdsCreateAdsResponse(
      adsCreateAdsResponse: map['ads_createAds_response'] as List<int>,
    );
  }
}

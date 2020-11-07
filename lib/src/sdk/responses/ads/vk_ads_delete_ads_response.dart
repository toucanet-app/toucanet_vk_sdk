class VKAdsDeleteAdsResponse {
  /// The list of 0 if success.
  final List<int> adsDeleteAdsResponse;

  const VKAdsDeleteAdsResponse({
    this.adsDeleteAdsResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ads_deleteAds_response': adsDeleteAdsResponse,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsDeleteAdsResponse.fromMap(Map<String, dynamic> map) {
    return VKAdsDeleteAdsResponse(
      adsDeleteAdsResponse: map['ads_deleteAds_response'] as List<int>,
    );
  }
}

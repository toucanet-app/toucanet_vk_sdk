class VKAdsUpdateAdsResponse {
  /// The list of Ad ID.
  final List<int> adsUpdateAdsResponse;

  const VKAdsUpdateAdsResponse({
    this.adsUpdateAdsResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ads_updateAds_response': adsUpdateAdsResponse,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsUpdateAdsResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAdsUpdateAdsResponse(
      adsUpdateAdsResponse: map['ads_updateAds_response'] as List<int>,
    );
  }
}

class VKAdsCreateClientsResponse {
  /// The list of Client ID.
  final List<int> adsCreateClientsResponse;

  const VKAdsCreateClientsResponse({
    this.adsCreateClientsResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ads_createClients_response': adsCreateClientsResponse,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsCreateClientsResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAdsCreateClientsResponse(
      adsCreateClientsResponse: map['ads_createClients_response'] as List<int>,
    );
  }
}

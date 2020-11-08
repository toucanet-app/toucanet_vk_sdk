import '../../objects/vk_objects.dart';

class VKAdsGetClientsResponse {
  final List<VKAdsClient> adsGetClientsResponse;

  const VKAdsGetClientsResponse({
    this.adsGetClientsResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ads_getClients_response': adsGetClientsResponse
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsGetClientsResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAdsGetClientsResponse(
      adsGetClientsResponse: map['ads_getClients_response']
          ?.map<List<VKAdsClient>>(
            (item) => VKAdsClient.fromMap(item),
          )
          ?.toList(),
    );
  }
}

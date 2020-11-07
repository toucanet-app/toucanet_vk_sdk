import '../../objects/vk_objects.dart';

class VKAdsGetClientsResponse {
  final List<VKAdsClient> adsGetClientsResponse;

  const VKAdsGetClientsResponse({
    this.adsGetClientsResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ads_getClients_response':
          adsGetClientsResponse?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsGetClientsResponse.fromMap(Map<String, dynamic> map) {
    return VKAdsGetClientsResponse(
      adsGetClientsResponse: map['ads_getClients_response']
          ?.map((item) => VKAdsClient.fromMap(item)),
    );
  }
}

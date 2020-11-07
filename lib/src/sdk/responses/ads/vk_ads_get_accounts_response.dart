import '../../objects/vk_objects.dart';

class VKAdsGetAccountsResponse {
  final List<VKAdsAccount> adsGetAccountsResponse;

  const VKAdsGetAccountsResponse({
    this.adsGetAccountsResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ads_getAccounts_response': adsGetAccountsResponse
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsGetAccountsResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAdsGetAccountsResponse(
      adsGetAccountsResponse: map['ads_getAccounts_response']
          ?.map<List<VKAdsAccount>>(
            (item) => VKAdsAccount.fromMap(item),
          )
          ?.toList(),
    );
  }
}

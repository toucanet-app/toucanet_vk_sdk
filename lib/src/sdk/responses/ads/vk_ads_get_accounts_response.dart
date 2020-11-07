import '../../objects/vk_objects.dart';

class VKAdsGetAccountsResponse {
  final List<VKAdsAccount> adsGetAccountsResponse;

  const VKAdsGetAccountsResponse({
    this.adsGetAccountsResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ads_getAccounts_response':
          adsGetAccountsResponse?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsGetAccountsResponse.fromMap(Map<String, dynamic> map) {
    return VKAdsGetAccountsResponse(
      adsGetAccountsResponse: map['ads_getAccounts_response']
          ?.map((item) => VKAdsAccount.fromMap(item)),
    );
  }
}

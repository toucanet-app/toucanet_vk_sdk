import '../../objects/vk_objects.dart';

class VKAdsGetOfficeUsersResponse {
  final List<VKAdsUsers> adsGetOfficeUsersResponse;

  const VKAdsGetOfficeUsersResponse({
    this.adsGetOfficeUsersResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ads_getOfficeUsers_response':
          adsGetOfficeUsersResponse?.map((item) => item?.toMap())?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsGetOfficeUsersResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAdsGetOfficeUsersResponse(
      adsGetOfficeUsersResponse: map['ads_getOfficeUsers_response']
          ?.map((item) => VKAdsUsers.fromMap(item))
          ?.toList(),
    );
  }
}

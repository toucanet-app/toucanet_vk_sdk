import '../../objects/vk_objects.dart';

class VKAdsUpdateOfficeUsersResponse {
  final List<VKAdsUpdateOfficeUsersResult> adsUpdateOfficeUsersResponse;

  const VKAdsUpdateOfficeUsersResponse({
    this.adsUpdateOfficeUsersResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ads_updateOfficeUsers_response':
          adsUpdateOfficeUsersResponse?.map((item) => item?.toMap())?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsUpdateOfficeUsersResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAdsUpdateOfficeUsersResponse(
      adsUpdateOfficeUsersResponse: map['ads_updateOfficeUsers_response']
          ?.map((item) => VKAdsUpdateOfficeUsersResult.fromMap(item))
          ?.toList(),
    );
  }
}

import '../../objects/vk_objects.dart';

class VKAdsGetTargetGroupsResponse {
  final List<VKAdsTargetGroup> adsGetTargetGroupsResponse;

  const VKAdsGetTargetGroupsResponse({
    this.adsGetTargetGroupsResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ads_getTargetGroups_response':
          adsGetTargetGroupsResponse?.map((item) => item?.toMap())?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsGetTargetGroupsResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAdsGetTargetGroupsResponse(
      adsGetTargetGroupsResponse: map['ads_getTargetGroups_response']
          ?.map((item) => VKAdsTargetGroup.fromMap(item))
          ?.toList(),
    );
  }
}

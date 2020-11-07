import '../../objects/vk_objects.dart';

class VKAdsGetPostsReachResponse {
  final List<VKAdsPromotedPostReach> adsGetPostsReachResponse;

  const VKAdsGetPostsReachResponse({
    this.adsGetPostsReachResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ads_getPostsReach_response':
          adsGetPostsReachResponse?.map((item) => item?.toMap())?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsGetPostsReachResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAdsGetPostsReachResponse(
      adsGetPostsReachResponse: map['ads_getPostsReach_response']
          ?.map((item) => VKAdsPromotedPostReach.fromMap(item))
          ?.toList(),
    );
  }
}

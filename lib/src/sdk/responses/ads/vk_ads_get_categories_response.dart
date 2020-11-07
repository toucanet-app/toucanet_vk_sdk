import '../../objects/vk_objects.dart';

class VKAdsGetCategoriesResponse {
  /// Old categories.
  final List<VKAdsCategory> v1;

  /// Actual categories.
  final List<VKAdsCategory> v2;

  const VKAdsGetCategoriesResponse({
    this.v1,
    this.v2,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'v1': v1?.map((item) => item?.toMap())?.toList(),
      'v2': v2?.map((item) => item?.toMap())?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsGetCategoriesResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAdsGetCategoriesResponse(
      v1: map['v1']?.map((item) => VKAdsCategory.fromMap(item))?.toList(),
      v2: map['v2']?.map((item) => VKAdsCategory.fromMap(item))?.toList(),
    );
  }
}

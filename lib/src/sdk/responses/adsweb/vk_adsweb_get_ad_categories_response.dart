import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKAdswebGetAdCategoriesResponse {
  final List<VKAdswebGetAdCategoriesResponseCategoriesCategory> categories;

  const VKAdswebGetAdCategoriesResponse({
    @required this.categories,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categories': categories?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdswebGetAdCategoriesResponse.fromMap(Map<String, dynamic> map) {
    return VKAdswebGetAdCategoriesResponse(
      categories: map['categories']?.map((item) =>
          VKAdswebGetAdCategoriesResponseCategoriesCategory.fromMap(item)),
    );
  }
}

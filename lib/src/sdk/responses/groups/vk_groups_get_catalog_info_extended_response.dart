import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKGroupsGetCatalogInfoExtendedResponse {
  /// Information whether catalog is enabled for current user.
  final int enabled;

  final List<VKGroupsGroupCategoryFull> categories;

  const VKGroupsGetCatalogInfoExtendedResponse({
    @required this.enabled,
    this.categories,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'categories': categories?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKGroupsGetCatalogInfoExtendedResponse.fromMap(
      Map<String, dynamic> map) {
    return VKGroupsGetCatalogInfoExtendedResponse(
      enabled: map['enabled'] as int,
      categories: map['categories']
          ?.map((item) => VKGroupsGroupCategoryFull.fromMap(item)),
    );
  }
}

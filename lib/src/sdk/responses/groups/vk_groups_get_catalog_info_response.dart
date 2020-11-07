import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKGroupsGetCatalogInfoResponse {
  /// Information whether catalog is enabled for current user.
  final int enabled;

  final List<VKGroupsGroupCategory> categories;

  const VKGroupsGetCatalogInfoResponse({
    @required this.enabled,
    this.categories,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'categories': categories?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKGroupsGetCatalogInfoResponse.fromMap(Map<String, dynamic> map) {
    return VKGroupsGetCatalogInfoResponse(
      enabled: map['enabled'] as int,
      categories:
          map['categories']?.map((item) => VKGroupsGroupCategory.fromMap(item)),
    );
  }
}

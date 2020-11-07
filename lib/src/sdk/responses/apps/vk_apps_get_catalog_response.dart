import '../../objects/vk_objects.dart';

class VKAppsGetCatalogResponse {
  /// Total number.
  final int count;

  final List<VKAppsApp> items;

  const VKAppsGetCatalogResponse({
    this.count,
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap())?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAppsGetCatalogResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAppsGetCatalogResponse(
      count: map['count'] as int,
      items: map['items']?.map((item) => VKAppsApp.fromMap(item))?.toList(),
    );
  }
}

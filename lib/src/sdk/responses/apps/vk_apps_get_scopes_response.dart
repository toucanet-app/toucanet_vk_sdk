import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKAppsGetScopesResponse {
  /// Total number.
  final int count;

  final List<VKAppsScope> items;

  const VKAppsGetScopesResponse({
    @required this.count,
    @required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap())?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAppsGetScopesResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAppsGetScopesResponse(
      count: map['count'] as int,
      items: map['items']?.map((item) => VKAppsScope.fromMap(item))?.toList(),
    );
  }
}

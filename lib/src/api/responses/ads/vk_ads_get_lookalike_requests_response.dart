import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKAdsGetLookalikeRequestsResponse {
  /// Total count of found lookalike requests.
  final int count;

  /// found lookalike requests.
  final List<VKAdsLookalikeRequest> items;

  const VKAdsGetLookalikeRequestsResponse({
    @required this.count,
    @required this.items,
  }) : assert(count >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsGetLookalikeRequestsResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAdsGetLookalikeRequestsResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map<VKAdsLookalikeRequest>(
            (item) => VKAdsLookalikeRequest.fromMap(item),
          )
          ?.toList(),
    );
  }
}

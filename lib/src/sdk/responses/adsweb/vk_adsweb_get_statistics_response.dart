import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKAdswebGetStatisticsResponse {
  final String nextPageId;

  final List<VKAdswebGetStatisticsResponseItemsItem> items;

  const VKAdswebGetStatisticsResponse({
    this.nextPageId,
    @required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'next_page_id': nextPageId,
      'items': items?.map((item) => item?.toMap())?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdswebGetStatisticsResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAdswebGetStatisticsResponse(
      nextPageId: map['next_page_id'] as String,
      items: map['items']
          ?.map((item) => VKAdswebGetStatisticsResponseItemsItem.fromMap(item))
          ?.toList(),
    );
  }
}

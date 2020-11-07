import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKMarketGetOrderItemsResponse {
  /// Total number.
  final int count;

  final List<VKMarketOrderItem> items;

  const VKMarketGetOrderItemsResponse({
    @required this.count,
    @required this.items,
  });

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

  factory VKMarketGetOrderItemsResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKMarketGetOrderItemsResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map<VKMarketOrderItem>(
            (item) => VKMarketOrderItem.fromMap(item),
          )
          ?.toList(),
    );
  }
}

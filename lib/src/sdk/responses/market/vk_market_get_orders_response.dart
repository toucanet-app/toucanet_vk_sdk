import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKMarketGetOrdersResponse {
  /// Total number.
  final int count;

  final List<VKMarketOrder> items;

  const VKMarketGetOrdersResponse({
    @required this.count,
    @required this.items,
  }) : assert(count >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMarketGetOrdersResponse.fromMap(Map<String, dynamic> map) {
    return VKMarketGetOrdersResponse(
      count: map['count'] as int,
      items: map['items']?.map((item) => VKMarketOrder.fromMap(item)),
    );
  }
}

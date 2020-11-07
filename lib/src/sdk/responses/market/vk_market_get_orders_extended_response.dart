import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKMarketGetOrdersExtendedResponse {
  /// Total number.
  final int count;

  final List<VKMarketOrder> items;

  final List<VKGroupsGroupFull> groups;

  const VKMarketGetOrdersExtendedResponse({
    @required this.count,
    @required this.items,
    this.groups,
  }) : assert(count >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap()),
      'groups': groups?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMarketGetOrdersExtendedResponse.fromMap(Map<String, dynamic> map) {
    return VKMarketGetOrdersExtendedResponse(
      count: map['count'] as int,
      items: map['items']?.map((item) => VKMarketOrder.fromMap(item)),
      groups: map['groups']?.map((item) => VKGroupsGroupFull.fromMap(item)),
    );
  }
}

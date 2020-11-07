import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKGroupsGetAddressesResponse {
  /// Total count of addresses.
  final int count;

  final List<VKGroupsAddress> items;

  const VKGroupsGetAddressesResponse({
    @required this.count,
    @required this.items,
  }) : assert(count >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap())?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKGroupsGetAddressesResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKGroupsGetAddressesResponse(
      count: map['count'] as int,
      items:
          map['items']?.map((item) => VKGroupsAddress.fromMap(item))?.toList(),
    );
  }
}

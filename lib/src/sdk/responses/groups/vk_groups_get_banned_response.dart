import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKGroupsGetBannedResponse {
  /// Total users number.
  final int count;

  final List<VKGroupsBannedItem> items;

  const VKGroupsGetBannedResponse({
    @required this.count,
    @required this.items,
  }) : assert(count >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKGroupsGetBannedResponse.fromMap(Map<String, dynamic> map) {
    return VKGroupsGetBannedResponse(
      count: map['count'] as int,
      items: map['items']?.map((item) => VKGroupsBannedItem.fromMap(item)),
    );
  }
}

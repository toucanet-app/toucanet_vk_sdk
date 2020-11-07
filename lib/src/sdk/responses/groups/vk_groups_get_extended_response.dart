import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKGroupsGetExtendedResponse {
  /// Total communities number.
  final int count;

  final List<VKGroupsGroupFull> items;

  const VKGroupsGetExtendedResponse({
    @required this.count,
    @required this.items,
  }) : assert(count >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKGroupsGetExtendedResponse.fromMap(Map<String, dynamic> map) {
    return VKGroupsGetExtendedResponse(
      count: map['count'] as int,
      items: map['items']?.map((item) => VKGroupsGroupFull.fromMap(item)),
    );
  }
}

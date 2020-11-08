import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKGroupsSearchResponse {
  /// Total communities number.
  final int count;

  final List<VKGroupsGroup> items;

  const VKGroupsSearchResponse({
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

  factory VKGroupsSearchResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKGroupsSearchResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map<VKGroupsGroup>(
            (item) => VKGroupsGroup.fromMap(item),
          )
          ?.toList(),
    );
  }
}

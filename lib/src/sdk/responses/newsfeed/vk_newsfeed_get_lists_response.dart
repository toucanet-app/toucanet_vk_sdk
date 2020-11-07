import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKNewsfeedGetListsResponse {
  /// Total number.
  final int count;

  final List<VKNewsfeedList> items;

  const VKNewsfeedGetListsResponse({
    @required this.count,
    @required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKNewsfeedGetListsResponse.fromMap(Map<String, dynamic> map) {
    return VKNewsfeedGetListsResponse(
      count: map['count'] as int,
      items: map['items']?.map((item) => VKNewsfeedList.fromMap(item)),
    );
  }
}
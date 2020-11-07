import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKWallGetResponse {
  /// Total number.
  final int count;

  final List<VKWallWallpostFull> items;

  const VKWallGetResponse({
    @required this.count,
    @required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKWallGetResponse.fromMap(Map<String, dynamic> map) {
    return VKWallGetResponse(
      count: map['count'] as int,
      items: map['items']?.map((item) => VKWallWallpostFull.fromMap(item)),
    );
  }
}

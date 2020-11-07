import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKVideoGetResponse {
  /// Total number.
  final int count;

  final List<VKVideoVideo> items;

  const VKVideoGetResponse({
    @required this.count,
    @required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKVideoGetResponse.fromMap(Map<String, dynamic> map) {
    return VKVideoGetResponse(
      count: map['count'] as int,
      items: map['items']?.map((item) => VKVideoVideo.fromMap(item)),
    );
  }
}

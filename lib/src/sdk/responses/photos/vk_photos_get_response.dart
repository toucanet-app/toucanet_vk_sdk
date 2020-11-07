import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKPhotosGetResponse {
  /// Total number.
  final int count;

  final List<VKPhotosPhoto> items;

  const VKPhotosGetResponse({
    @required this.count,
    @required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPhotosGetResponse.fromMap(Map<String, dynamic> map) {
    return VKPhotosGetResponse(
      count: map['count'] as int,
      items: map['items']?.map((item) => VKPhotosPhoto.fromMap(item)),
    );
  }
}

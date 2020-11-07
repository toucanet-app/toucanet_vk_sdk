import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKPhotosGetUserPhotosResponse {
  /// Total number.
  final int count;

  final List<VKPhotosPhoto> items;

  const VKPhotosGetUserPhotosResponse({
    @required this.count,
    @required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap())?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPhotosGetUserPhotosResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKPhotosGetUserPhotosResponse(
      count: map['count'] as int,
      items: map['items']?.map((item) => VKPhotosPhoto.fromMap(item))?.toList(),
    );
  }
}

import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKPhotosGetNewTagsResponse {
  /// Total number.
  final int count;

  final List<VKPhotosPhotoXtrTagInfo> items;

  const VKPhotosGetNewTagsResponse({
    @required this.count,
    @required this.items,
  });

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

  factory VKPhotosGetNewTagsResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKPhotosGetNewTagsResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map<VKPhotosPhotoXtrTagInfo>(
            (item) => VKPhotosPhotoXtrTagInfo.fromMap(item),
          )
          ?.toList(),
    );
  }
}

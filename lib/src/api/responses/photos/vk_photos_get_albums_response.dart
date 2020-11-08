import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKPhotosGetAlbumsResponse {
  /// Total number.
  final int count;

  final List<VKPhotosPhotoAlbumFull> items;

  const VKPhotosGetAlbumsResponse({
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

  factory VKPhotosGetAlbumsResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKPhotosGetAlbumsResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map<VKPhotosPhotoAlbumFull>(
            (item) => VKPhotosPhotoAlbumFull.fromMap(item),
          )
          ?.toList(),
    );
  }
}

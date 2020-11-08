import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKVideoGetAlbumsResponse {
  /// Total number.
  final int count;

  final List<VKVideoVideoAlbumFull> items;

  const VKVideoGetAlbumsResponse({
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

  factory VKVideoGetAlbumsResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKVideoGetAlbumsResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map<VKVideoVideoAlbumFull>(
            (item) => VKVideoVideoAlbumFull.fromMap(item),
          )
          ?.toList(),
    );
  }
}

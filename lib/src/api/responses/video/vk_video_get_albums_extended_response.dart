import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKVideoGetAlbumsExtendedResponse {
  /// Total number.
  final int count;

  final List<VKVideoVideoAlbumFull> items;

  const VKVideoGetAlbumsExtendedResponse({
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

  factory VKVideoGetAlbumsExtendedResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKVideoGetAlbumsExtendedResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map<VKVideoVideoAlbumFull>(
            (item) => VKVideoVideoAlbumFull.fromMap(item),
          )
          ?.toList(),
    );
  }
}

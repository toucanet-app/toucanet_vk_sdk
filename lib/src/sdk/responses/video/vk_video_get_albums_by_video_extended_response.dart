import '../../objects/vk_objects.dart';

class VKVideoGetAlbumsByVideoExtendedResponse {
  /// Total number.
  final int count;

  final List<VKVideoVideoAlbumFull> items;

  const VKVideoGetAlbumsByVideoExtendedResponse({
    this.count,
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap())?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKVideoGetAlbumsByVideoExtendedResponse.fromMap(
      Map<String, dynamic> map) {
    if (map == null) return null;

    return VKVideoGetAlbumsByVideoExtendedResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map((item) => VKVideoVideoAlbumFull.fromMap(item))
          ?.toList(),
    );
  }
}

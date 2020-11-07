import '../../objects/vk_objects.dart';

class VKMarketGetAlbumByIdResponse {
  /// Total number.
  final int count;

  final List<VKMarketMarketAlbum> items;

  const VKMarketGetAlbumByIdResponse({
    this.count,
    this.items,
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

  factory VKMarketGetAlbumByIdResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKMarketGetAlbumByIdResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map<VKMarketMarketAlbum>(
            (item) => VKMarketMarketAlbum.fromMap(item),
          )
          ?.toList(),
    );
  }
}

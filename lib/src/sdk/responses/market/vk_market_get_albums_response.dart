import '../../objects/vk_objects.dart';

class VKMarketGetAlbumsResponse {
  /// Total number.
  final int count;

  final List<VKMarketMarketAlbum> items;

  const VKMarketGetAlbumsResponse({
    this.count,
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMarketGetAlbumsResponse.fromMap(Map<String, dynamic> map) {
    return VKMarketGetAlbumsResponse(
      count: map['count'] as int,
      items: map['items']?.map((item) => VKMarketMarketAlbum.fromMap(item)),
    );
  }
}

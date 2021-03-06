import '../../objects/vk_objects.dart';

class VKFaveGetPagesResponse {
  final int count;

  final List<VKFavePage> items;

  const VKFaveGetPagesResponse({
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

  factory VKFaveGetPagesResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKFaveGetPagesResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map<VKFavePage>(
            (item) => VKFavePage.fromMap(item),
          )
          ?.toList(),
    );
  }
}

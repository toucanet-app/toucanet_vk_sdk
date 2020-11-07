import '../../objects/vk_objects.dart';

class VKFaveGetTagsResponse {
  final int count;

  final List<VKFaveTag> items;

  const VKFaveGetTagsResponse({
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

  factory VKFaveGetTagsResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKFaveGetTagsResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map<VKFaveTag>(
            (item) => VKFaveTag.fromMap(item),
          )
          ?.toList(),
    );
  }
}

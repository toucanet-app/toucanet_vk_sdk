import '../../objects/vk_objects.dart';

class VKWallGetByIdResponse {
  final List<VKWallWallpostFull> items;

  const VKWallGetByIdResponse({
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': items
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKWallGetByIdResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKWallGetByIdResponse(
      items: map['items']
          ?.map<VKWallWallpostFull>(
            (item) => VKWallWallpostFull.fromMap(item),
          )
          ?.toList(),
    );
  }
}

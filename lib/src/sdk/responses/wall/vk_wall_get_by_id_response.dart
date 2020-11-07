import '../../objects/vk_objects.dart';

class VKWallGetByIdResponse {
  final List<VKWallWallpostFull> items;

  const VKWallGetByIdResponse({
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': items?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKWallGetByIdResponse.fromMap(Map<String, dynamic> map) {
    return VKWallGetByIdResponse(
      items: map['items']?.map((item) => VKWallWallpostFull.fromMap(item)),
    );
  }
}

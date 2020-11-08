import '../../objects/vk_objects.dart';

class VKAppWidgetsGetAppImagesResponse {
  final int count;

  final List<VKAppWidgetsPhoto> items;

  const VKAppWidgetsGetAppImagesResponse({
    this.count,
    this.items,
  }) : assert(count == null || count >= 0);

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

  factory VKAppWidgetsGetAppImagesResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAppWidgetsGetAppImagesResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map<VKAppWidgetsPhoto>(
            (item) => VKAppWidgetsPhoto.fromMap(item),
          )
          ?.toList(),
    );
  }
}

import '../../objects/vk_objects.dart';

class VKAppWidgetsGetAppImagesResponse {
  final int count;

  final List<VKAppWidgetsPhoto> items;

  const VKAppWidgetsGetAppImagesResponse({
    this.count,
    this.items,
  }) : assert(count >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAppWidgetsGetAppImagesResponse.fromMap(Map<String, dynamic> map) {
    return VKAppWidgetsGetAppImagesResponse(
      count: map['count'] as int,
      items: map['items']?.map((item) => VKAppWidgetsPhoto.fromMap(item)),
    );
  }
}

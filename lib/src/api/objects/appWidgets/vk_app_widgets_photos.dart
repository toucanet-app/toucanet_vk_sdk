import 'vk_app_widgets_photo.dart';

class VKAppWidgetsPhotos {
  final int count;

  final List<VKAppWidgetsPhoto> items;

  const VKAppWidgetsPhotos({
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

  factory VKAppWidgetsPhotos.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAppWidgetsPhotos(
      count: map['count'] as int,
      items: map['items']
          ?.map<VKAppWidgetsPhoto>(
            (item) => VKAppWidgetsPhoto.fromMap(item),
          )
          ?.toList(),
    );
  }
}

import 'appWidgets_photo.dart';

class VKAppWidgetsPhotos {
  final int count;

  final List<VKAppWidgetsPhoto> items;

  const VKAppWidgetsPhotos({
    this.count,
    this.items,
  }) : assert(count >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAppWidgetsPhotos.fromMap(Map<String, dynamic> map) {
    return VKAppWidgetsPhotos(
      count: map['count'] as int,
      items: map['items']?.map((item) => VKAppWidgetsPhoto.fromMap(item)),
    );
  }
}

import 'appWidgets_photo.dart';

class AppWidgetsPhotos {
  final int count;

  final List<AppWidgetsPhoto> items;

  const AppWidgetsPhotos({
    this.count,
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory AppWidgetsPhotos.fromMap(Map<String, dynamic> map) {
    return AppWidgetsPhotos(
      count: map['count'] as int,
      items: map['items']?.map((item) => AppWidgetsPhoto.fromMap(item)),
    );
  }
}

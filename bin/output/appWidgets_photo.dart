import 'base_image.dart';
import 'package:meta/meta.dart';

class AppWidgetsPhoto {
  /// Image ID.
  final String id;

  final List<BaseImage> images;

  final dynamic type;

  const AppWidgetsPhoto({
    @required this.id,
    @required this.images,
    @required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'images': images?.map((item) => item?.toMap()),
      'type': type,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory AppWidgetsPhoto.fromMap(Map<String, dynamic> map) {
    return AppWidgetsPhoto(
      id: map['id'] as String,
      images: map['images']?.map((item) => BaseImage.fromMap(item)),
      type: map['type'] as dynamic,
    );
  }
}

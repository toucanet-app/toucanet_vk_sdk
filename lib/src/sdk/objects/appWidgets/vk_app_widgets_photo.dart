import 'package:meta/meta.dart';

import '../base/vk_base_image.dart';

class VKAppWidgetsPhoto {
  /// Image ID.
  final String id;

  final List<VKBaseImage> images;

  final dynamic type;

  const VKAppWidgetsPhoto({
    @required this.id,
    @required this.images,
    @required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'images': images?.map((item) => item?.toMap())?.toList(),
      'type': type,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAppWidgetsPhoto.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAppWidgetsPhoto(
      id: map['id'] as String,
      images: map['images']?.map((item) => VKBaseImage.fromMap(item))?.toList(),
      type: map['type'] as dynamic,
    );
  }
}

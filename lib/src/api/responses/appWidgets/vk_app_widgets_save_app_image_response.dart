import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKAppWidgetsSaveAppImageResponse {
  /// Image ID.
  final String id;

  final List<VKBaseImage> images;

  final dynamic type;

  const VKAppWidgetsSaveAppImageResponse({
    @required this.id,
    @required this.images,
    @required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'images': images
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
      'type': type,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAppWidgetsSaveAppImageResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAppWidgetsSaveAppImageResponse(
      id: map['id'] as String,
      images: map['images']
          ?.map<VKBaseImage>(
            (item) => VKBaseImage.fromMap(item),
          )
          ?.toList(),
      type: map['type'] as dynamic,
    );
  }
}

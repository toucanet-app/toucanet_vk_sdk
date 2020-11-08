import 'package:meta/meta.dart';

import '../photos/vk_photos_photo_sizes_type.dart';

class VKDocsDocPreviewPhotoSizes {
  /// URL of the image.
  final String src;

  /// Width in px.
  final int width;

  /// Height in px.
  final int height;

  final VKPhotosPhotoSizesType type;

  const VKDocsDocPreviewPhotoSizes({
    @required this.src,
    @required this.width,
    @required this.height,
    @required this.type,
  })  : assert(width >= 0),
        assert(height >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'src': src,
      'width': width,
      'height': height,
      'type': type?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKDocsDocPreviewPhotoSizes.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKDocsDocPreviewPhotoSizes(
      src: map['src'] as String,
      width: map['width'] as int,
      height: map['height'] as int,
      type: VKPhotosPhotoSizesType(map['type']),
    );
  }
}

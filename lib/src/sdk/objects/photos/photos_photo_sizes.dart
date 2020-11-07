import 'package:meta/meta.dart';

import 'photos_photo_sizes_type.dart';

class VKPhotosPhotoSizes {
  /// Height in px.
  final int height;

  /// URL of the image.
  final String url;

  /// URL of the image.
  final String src;

  final VKPhotosPhotoSizesType type;

  /// Width in px.
  final int width;

  const VKPhotosPhotoSizes({
    @required this.height,
    @required this.url,
    this.src,
    @required this.type,
    @required this.width,
  })  : assert(height >= 0),
        assert(width >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'height': height,
      'url': url,
      'src': src,
      'type': type?.value,
      'width': width,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPhotosPhotoSizes.fromMap(Map<String, dynamic> map) {
    return VKPhotosPhotoSizes(
      height: map['height'] as int,
      url: map['url'] as String,
      src: map['src'] as String,
      type: VKPhotosPhotoSizesType(map['type']),
      width: map['width'] as int,
    );
  }
}

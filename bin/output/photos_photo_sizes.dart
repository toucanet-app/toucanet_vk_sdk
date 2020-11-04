import 'photos_photo_sizes_type.dart';
import 'package:meta/meta.dart';

class PhotosPhotoSizes {
  /// Height in px.
  final int height;

  /// URL of the image.
  final String url;

  /// URL of the image.
  final String src;

  final PhotosPhotoSizesType type;

  /// Width in px.
  final int width;

  const PhotosPhotoSizes({
    @required this.height,
    @required this.url,
    this.src,
    @required this.type,
    @required this.width,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'height': height,
      'url': url,
      'src': src,
      'type': type?.value,
      'width': width,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory PhotosPhotoSizes.fromMap(Map<String, dynamic> map) {
    return PhotosPhotoSizes(
      height: map['height'] as int,
      url: map['url'] as String,
      src: map['src'] as String,
      type: PhotosPhotoSizesType(map['type']),
      width: map['width'] as int,
    );
  }
}

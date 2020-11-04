import 'photos_image_type.dart';

class PhotosImage {
  /// Height of the photo in px..
  final int height;

  final PhotosImageType type;

  /// Photo URL..
  final String url;

  /// Width of the photo in px..
  final int width;

  const PhotosImage({
    this.height,
    this.type,
    this.url,
    this.width,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'height': height,
      'type': type?.value,
      'url': url,
      'width': width,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory PhotosImage.fromMap(Map<String, dynamic> map) {
    return PhotosImage(
      height: map['height'] as int,
      type: PhotosImageType(map['type']),
      url: map['url'] as String,
      width: map['width'] as int,
    );
  }
}

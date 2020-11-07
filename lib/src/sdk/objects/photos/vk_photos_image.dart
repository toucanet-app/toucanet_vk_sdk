import 'vk_photos_image_type.dart';

class VKPhotosImage {
  /// Height of the photo in px..
  final int height;

  final VKPhotosImageType type;

  /// Photo URL..
  final String url;

  /// Width of the photo in px..
  final int width;

  const VKPhotosImage({
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

  factory VKPhotosImage.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKPhotosImage(
      height: map['height'] as int,
      type: VKPhotosImageType(map['type']),
      url: map['url'] as String,
      width: map['width'] as int,
    );
  }
}

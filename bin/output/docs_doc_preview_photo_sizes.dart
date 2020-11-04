import 'photos_photo_sizes_type.dart';
import 'package:meta/meta.dart';

class DocsDocPreviewPhotoSizes {
  /// URL of the image.
  final String src;

  /// Width in px.
  final int width;

  /// Height in px.
  final int height;

  final PhotosPhotoSizesType type;

  const DocsDocPreviewPhotoSizes({
    @required this.src,
    @required this.width,
    @required this.height,
    @required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'src': src,
      'width': width,
      'height': height,
      'type': type?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory DocsDocPreviewPhotoSizes.fromMap(Map<String, dynamic> map) {
    return DocsDocPreviewPhotoSizes(
      src: map['src'] as String,
      width: map['width'] as int,
      height: map['height'] as int,
      type: PhotosPhotoSizesType(map['type']),
    );
  }
}

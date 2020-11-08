import 'package:meta/meta.dart';

class VKDocsDocPreviewVideo {
  /// Video URL.
  final String src;

  /// Video's width in pixels.
  final int width;

  /// Video's height in pixels.
  final int height;

  /// Video file size in bites.
  final int fileSize;

  const VKDocsDocPreviewVideo({
    @required this.src,
    @required this.width,
    @required this.height,
    @required this.fileSize,
  })  : assert(width >= 0),
        assert(height >= 0),
        assert(fileSize >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'src': src,
      'width': width,
      'height': height,
      'file_size': fileSize,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKDocsDocPreviewVideo.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKDocsDocPreviewVideo(
      src: map['src'] as String,
      width: map['width'] as int,
      height: map['height'] as int,
      fileSize: map['file_size'] as int,
    );
  }
}

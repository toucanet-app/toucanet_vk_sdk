import 'package:meta/meta.dart';

class DocsDocPreviewVideo {
  /// Video URL.
  final String src;

  /// Video's width in pixels.
  final int width;

  /// Video's height in pixels.
  final int height;

  /// Video file size in bites.
  final int fileSize;

  const DocsDocPreviewVideo({
    @required this.src,
    @required this.width,
    @required this.height,
    @required this.fileSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'src': src,
      'width': width,
      'height': height,
      'file_size': fileSize,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory DocsDocPreviewVideo.fromMap(Map<String, dynamic> map) {
    return DocsDocPreviewVideo(
      src: map['src'] as String,
      width: map['width'] as int,
      height: map['height'] as int,
      fileSize: map['file_size'] as int,
    );
  }
}

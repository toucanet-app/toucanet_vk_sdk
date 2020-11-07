import 'package:meta/meta.dart';

class VKDocsDocPreviewGraffiti {
  /// Graffiti file URL.
  final String src;

  /// Graffiti width.
  final int width;

  /// Graffiti height.
  final int height;

  const VKDocsDocPreviewGraffiti({
    @required this.src,
    @required this.width,
    @required this.height,
  })  : assert(width >= 0),
        assert(height >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'src': src,
      'width': width,
      'height': height,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKDocsDocPreviewGraffiti.fromMap(Map<String, dynamic> map) {
    return VKDocsDocPreviewGraffiti(
      src: map['src'] as String,
      width: map['width'] as int,
      height: map['height'] as int,
    );
  }
}

import 'package:meta/meta.dart';

class DocsDocPreviewGraffiti {
  /// Graffiti file URL.
  final String src;

  /// Graffiti width.
  final int width;

  /// Graffiti height.
  final int height;

  const DocsDocPreviewGraffiti({
    @required this.src,
    @required this.width,
    @required this.height,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'src': src,
      'width': width,
      'height': height,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory DocsDocPreviewGraffiti.fromMap(Map<String, dynamic> map) {
    return DocsDocPreviewGraffiti(
      src: map['src'] as String,
      width: map['width'] as int,
      height: map['height'] as int,
    );
  }
}

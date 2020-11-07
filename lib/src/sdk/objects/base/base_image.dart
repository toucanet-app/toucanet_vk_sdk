import 'package:meta/meta.dart';

class VKBaseImage {
  final String id;

  /// Image height.
  final int height;

  /// Image url.
  final String url;

  /// Image width.
  final int width;

  const VKBaseImage({
    this.id,
    @required this.height,
    @required this.url,
    @required this.width,
  })  : assert(height >= 0),
        assert(width >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'height': height,
      'url': url,
      'width': width,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKBaseImage.fromMap(Map<String, dynamic> map) {
    return VKBaseImage(
      id: map['id'] as String,
      height: map['height'] as int,
      url: map['url'] as String,
      width: map['width'] as int,
    );
  }
}

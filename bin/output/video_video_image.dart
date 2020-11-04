import 'base_property_exists.dart';
import 'package:meta/meta.dart';

class VideoVideoImage {
  final String id;

  /// Image height.
  final int height;

  /// Image url.
  final String url;

  /// Image width.
  final int width;

  final BasePropertyExists withPadding;

  const VideoVideoImage({
    this.id,
    @required this.height,
    @required this.url,
    @required this.width,
    this.withPadding,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'height': height,
      'url': url,
      'width': width,
      'with_padding': withPadding?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VideoVideoImage.fromMap(Map<String, dynamic> map) {
    return VideoVideoImage(
      id: map['id'] as String,
      height: map['height'] as int,
      url: map['url'] as String,
      width: map['width'] as int,
      withPadding: BasePropertyExists(map['with_padding']),
    );
  }
}

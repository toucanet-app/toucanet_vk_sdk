import 'package:meta/meta.dart';

import '../base/vk_base_property_exists.dart';

class VKVideoVideoImage {
  final String id;

  /// Image height.
  final int height;

  /// Image url.
  final String url;

  /// Image width.
  final int width;

  final VKBasePropertyExists withPadding;

  const VKVideoVideoImage({
    this.id,
    @required this.height,
    @required this.url,
    @required this.width,
    this.withPadding,
  })  : assert(height >= 0),
        assert(width >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'height': height,
      'url': url,
      'width': width,
      'with_padding': withPadding?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKVideoVideoImage.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKVideoVideoImage(
      id: map['id'] as String,
      height: map['height'] as int,
      url: map['url'] as String,
      width: map['width'] as int,
      withPadding: VKBasePropertyExists(map['with_padding']),
    );
  }
}

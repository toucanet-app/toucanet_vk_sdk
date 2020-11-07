import '../base/base_gradient_point.dart';
import '../base/base_image.dart';

class VKPollsBackground {
  /// Gradient angle with 0 on positive X axis.
  final int angle;

  /// Hex color code without #.
  final String color;

  /// Original height of pattern tile.
  final int height;

  final int id;

  final String name;

  /// Pattern tiles.
  final List<VKBaseImage> images;

  /// Gradient points.
  final List<VKBaseGradientPoint> points;

  final String type;

  /// Original with of pattern tile.
  final int width;

  const VKPollsBackground({
    this.angle,
    this.color,
    this.height,
    this.id,
    this.name,
    this.images,
    this.points,
    this.type,
    this.width,
  })  : assert(height >= 0),
        assert(width >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'angle': angle,
      'color': color,
      'height': height,
      'id': id,
      'name': name,
      'images': images?.map((item) => item?.toMap()),
      'points': points?.map((item) => item?.toMap()),
      'type': type,
      'width': width,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPollsBackground.fromMap(Map<String, dynamic> map) {
    return VKPollsBackground(
      angle: map['angle'] as int,
      color: map['color'] as String,
      height: map['height'] as int,
      id: map['id'] as int,
      name: map['name'] as String,
      images: map['images']?.map((item) => VKBaseImage.fromMap(item)),
      points: map['points']?.map((item) => VKBaseGradientPoint.fromMap(item)),
      type: map['type'] as String,
      width: map['width'] as int,
    );
  }
}

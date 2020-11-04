import 'base_image.dart';
import 'base_gradient_point.dart';

class PollsBackground {
  /// Gradient angle with 0 on positive X axis.
  final int angle;

  /// Hex color code without #.
  final String color;

  /// Original height of pattern tile.
  final int height;

  final int id;

  final String name;

  /// Pattern tiles.
  final List<BaseImage> images;

  /// Gradient points.
  final List<BaseGradientPoint> points;

  final String type;

  /// Original with of pattern tile.
  final int width;

  const PollsBackground({
    this.angle,
    this.color,
    this.height,
    this.id,
    this.name,
    this.images,
    this.points,
    this.type,
    this.width,
  });

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

  factory PollsBackground.fromMap(Map<String, dynamic> map) {
    return PollsBackground(
      angle: map['angle'] as int,
      color: map['color'] as String,
      height: map['height'] as int,
      id: map['id'] as int,
      name: map['name'] as String,
      images: map['images']?.map((item) => BaseImage.fromMap(item)),
      points: map['points']?.map((item) => BaseGradientPoint.fromMap(item)),
      type: map['type'] as String,
      width: map['width'] as int,
    );
  }
}

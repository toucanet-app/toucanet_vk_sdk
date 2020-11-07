import 'package:meta/meta.dart';

class VKBaseGradientPoint {
  /// Hex color code without #.
  final String color;

  /// Point position.
  final double position;

  const VKBaseGradientPoint({
    @required this.color,
    @required this.position,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'color': color,
      'position': position,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKBaseGradientPoint.fromMap(Map<String, dynamic> map) {
    return VKBaseGradientPoint(
      color: map['color'] as String,
      position: map['position'] as double,
    );
  }
}

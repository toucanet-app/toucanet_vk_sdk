import 'package:meta/meta.dart';

class BaseGradientPoint {
  /// Hex color code without #.
  final String color;

  /// Point position.
  final double position;

  const BaseGradientPoint({
    @required this.color,
    @required this.position,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'color': color,
      'position': position,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory BaseGradientPoint.fromMap(Map<String, dynamic> map) {
    return BaseGradientPoint(
      color: map['color'] as String,
      position: map['position'] as double,
    );
  }
}

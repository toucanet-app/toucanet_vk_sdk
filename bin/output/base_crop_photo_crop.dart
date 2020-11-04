import 'package:meta/meta.dart';

class BaseCropPhotoCrop {
  /// Coordinate X of the left upper corner.
  final double x;

  /// Coordinate Y of the left upper corner.
  final double y;

  /// Coordinate X of the right lower corner.
  final double x2;

  /// Coordinate Y of the right lower corner.
  final double y2;

  const BaseCropPhotoCrop({
    @required this.x,
    @required this.y,
    @required this.x2,
    @required this.y2,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'x': x,
      'y': y,
      'x2': x2,
      'y2': y2,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory BaseCropPhotoCrop.fromMap(Map<String, dynamic> map) {
    return BaseCropPhotoCrop(
      x: map['x'] as double,
      y: map['y'] as double,
      x2: map['x2'] as double,
      y2: map['y2'] as double,
    );
  }
}

import 'package:meta/meta.dart';

class DatabaseStation {
  /// City ID.
  final int cityId;

  /// Hex color code without #.
  final String color;

  /// Station ID.
  final int id;

  /// Station name.
  final String name;

  const DatabaseStation({
    this.cityId,
    this.color,
    @required this.id,
    @required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'city_id': cityId,
      'color': color,
      'id': id,
      'name': name,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory DatabaseStation.fromMap(Map<String, dynamic> map) {
    return DatabaseStation(
      cityId: map['city_id'] as int,
      color: map['color'] as String,
      id: map['id'] as int,
      name: map['name'] as String,
    );
  }
}

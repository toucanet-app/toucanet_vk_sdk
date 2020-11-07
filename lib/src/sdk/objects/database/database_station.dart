import 'package:meta/meta.dart';

class VKDatabaseStation {
  /// City ID.
  final int cityId;

  /// Hex color code without #.
  final String color;

  /// Station ID.
  final int id;

  /// Station name.
  final String name;

  const VKDatabaseStation({
    this.cityId,
    this.color,
    @required this.id,
    @required this.name,
  })  : assert(cityId >= 1),
        assert(id >= 1);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'city_id': cityId,
      'color': color,
      'id': id,
      'name': name,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKDatabaseStation.fromMap(Map<String, dynamic> map) {
    return VKDatabaseStation(
      cityId: map['city_id'] as int,
      color: map['color'] as String,
      id: map['id'] as int,
      name: map['name'] as String,
    );
  }
}

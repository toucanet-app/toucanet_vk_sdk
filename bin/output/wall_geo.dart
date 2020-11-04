import 'base_place.dart';

class WallGeo {
  /// Coordinates as string. <latitude> <longtitude>.
  final String coordinates;

  final BasePlace place;

  /// Information whether a map is showed.
  final int showmap;

  /// Place type.
  final String type;

  const WallGeo({
    this.coordinates,
    this.place,
    this.showmap,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coordinates': coordinates,
      'place': place?.toMap(),
      'showmap': showmap,
      'type': type,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory WallGeo.fromMap(Map<String, dynamic> map) {
    return WallGeo(
      coordinates: map['coordinates'] as String,
      place: BasePlace.fromMap(map['place']),
      showmap: map['showmap'] as int,
      type: map['type'] as String,
    );
  }
}

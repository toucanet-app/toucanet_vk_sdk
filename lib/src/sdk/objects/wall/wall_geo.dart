import '../base/base_place.dart';

class VKWallGeo {
  /// Coordinates as string. <latitude> <longtitude>.
  final String coordinates;

  final VKBasePlace place;

  /// Information whether a map is showed.
  final int showmap;

  /// Place type.
  final String type;

  const VKWallGeo({
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

  factory VKWallGeo.fromMap(Map<String, dynamic> map) {
    return VKWallGeo(
      coordinates: map['coordinates'] as String,
      place: VKBasePlace.fromMap(map['place']),
      showmap: map['showmap'] as int,
      type: map['type'] as String,
    );
  }
}

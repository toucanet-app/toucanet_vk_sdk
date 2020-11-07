import 'base_geo_coordinates.dart';
import 'base_place.dart';

class VKBaseGeo {
  final VKBaseGeoCoordinates coordinates;

  final VKBasePlace place;

  /// Information whether a map is showed.
  final int showmap;

  /// Place type.
  final String type;

  const VKBaseGeo({
    this.coordinates,
    this.place,
    this.showmap,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coordinates': coordinates?.toMap(),
      'place': place?.toMap(),
      'showmap': showmap,
      'type': type,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKBaseGeo.fromMap(Map<String, dynamic> map) {
    return VKBaseGeo(
      coordinates: VKBaseGeoCoordinates.fromMap(map['coordinates']),
      place: VKBasePlace.fromMap(map['place']),
      showmap: map['showmap'] as int,
      type: map['type'] as String,
    );
  }
}

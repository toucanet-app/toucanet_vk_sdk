import 'base_geo_coordinates.dart';
import 'base_place.dart';

class BaseGeo {
  final BaseGeoCoordinates coordinates;

  final BasePlace place;

  /// Information whether a map is showed.
  final int showmap;

  /// Place type.
  final String type;

  const BaseGeo({
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

  factory BaseGeo.fromMap(Map<String, dynamic> map) {
    return BaseGeo(
      coordinates: BaseGeoCoordinates.fromMap(map['coordinates']),
      place: BasePlace.fromMap(map['place']),
      showmap: map['showmap'] as int,
      type: map['type'] as String,
    );
  }
}

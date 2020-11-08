import 'package:meta/meta.dart';

class VKBaseGeoCoordinates {
  final double latitude;

  final double longitude;

  const VKBaseGeoCoordinates({
    @required this.latitude,
    @required this.longitude,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'latitude': latitude,
      'longitude': longitude,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKBaseGeoCoordinates.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKBaseGeoCoordinates(
      latitude: map['latitude'] as double,
      longitude: map['longitude'] as double,
    );
  }
}

import 'package:meta/meta.dart';

class BaseGeoCoordinates {
  final double latitude;

  final double longitude;

  const BaseGeoCoordinates({
    @required this.latitude,
    @required this.longitude,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'latitude': latitude,
      'longitude': longitude,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory BaseGeoCoordinates.fromMap(Map<String, dynamic> map) {
    return BaseGeoCoordinates(
      latitude: map['latitude'] as double,
      longitude: map['longitude'] as double,
    );
  }
}

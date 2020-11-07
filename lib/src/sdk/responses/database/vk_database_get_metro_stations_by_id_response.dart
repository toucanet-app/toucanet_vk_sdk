import '../../objects/vk_objects.dart';

class VKDatabaseGetMetroStationsByIdResponse {
  final List<VKDatabaseStation> databaseGetMetroStationsByIdResponse;

  const VKDatabaseGetMetroStationsByIdResponse({
    this.databaseGetMetroStationsByIdResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database_getMetroStationsById_response':
          databaseGetMetroStationsByIdResponse
              ?.map((item) => item?.toMap())
              ?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKDatabaseGetMetroStationsByIdResponse.fromMap(
      Map<String, dynamic> map) {
    if (map == null) return null;

    return VKDatabaseGetMetroStationsByIdResponse(
      databaseGetMetroStationsByIdResponse:
          map['database_getMetroStationsById_response']
              ?.map((item) => VKDatabaseStation.fromMap(item))
              ?.toList(),
    );
  }
}

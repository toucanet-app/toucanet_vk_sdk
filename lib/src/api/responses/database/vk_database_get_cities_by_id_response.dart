import '../../objects/vk_objects.dart';

class VKDatabaseGetCitiesByIdResponse {
  final List<VKBaseObject> databaseGetCitiesByIdResponse;

  const VKDatabaseGetCitiesByIdResponse({
    this.databaseGetCitiesByIdResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database_getCitiesById_response': databaseGetCitiesByIdResponse
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKDatabaseGetCitiesByIdResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKDatabaseGetCitiesByIdResponse(
      databaseGetCitiesByIdResponse: map['database_getCitiesById_response']
          ?.map<List<VKBaseObject>>(
            (item) => VKBaseObject.fromMap(item),
          )
          ?.toList(),
    );
  }
}

import '../../objects/vk_objects.dart';

class VKDatabaseGetCountriesByIdResponse {
  final List<VKBaseCountry> databaseGetCountriesByIdResponse;

  const VKDatabaseGetCountriesByIdResponse({
    this.databaseGetCountriesByIdResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database_getCountriesById_response': databaseGetCountriesByIdResponse
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKDatabaseGetCountriesByIdResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKDatabaseGetCountriesByIdResponse(
      databaseGetCountriesByIdResponse:
          map['database_getCountriesById_response']
              ?.map<List<VKBaseCountry>>(
                (item) => VKBaseCountry.fromMap(item),
              )
              ?.toList(),
    );
  }
}

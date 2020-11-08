import '../../objects/vk_objects.dart';

class VKDatabaseGetCountriesResponse {
  /// Total number.
  final int count;

  final List<VKBaseCountry> items;

  const VKDatabaseGetCountriesResponse({
    this.count,
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKDatabaseGetCountriesResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKDatabaseGetCountriesResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map<VKBaseCountry>(
            (item) => VKBaseCountry.fromMap(item),
          )
          ?.toList(),
    );
  }
}

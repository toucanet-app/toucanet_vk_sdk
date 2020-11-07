import '../../objects/vk_objects.dart';

class VKDatabaseGetCitiesResponse {
  /// Total number.
  final int count;

  final List<VKDatabaseCity> items;

  const VKDatabaseGetCitiesResponse({
    this.count,
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap())?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKDatabaseGetCitiesResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKDatabaseGetCitiesResponse(
      count: map['count'] as int,
      items:
          map['items']?.map((item) => VKDatabaseCity.fromMap(item))?.toList(),
    );
  }
}

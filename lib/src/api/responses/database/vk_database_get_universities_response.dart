import '../../objects/vk_objects.dart';

class VKDatabaseGetUniversitiesResponse {
  /// Total number.
  final int count;

  final List<VKDatabaseUniversity> items;

  const VKDatabaseGetUniversitiesResponse({
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

  factory VKDatabaseGetUniversitiesResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKDatabaseGetUniversitiesResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map<VKDatabaseUniversity>(
            (item) => VKDatabaseUniversity.fromMap(item),
          )
          ?.toList(),
    );
  }
}

import '../../objects/vk_objects.dart';

class VKDatabaseGetSchoolsResponse {
  /// Total number.
  final int count;

  final List<VKDatabaseSchool> items;

  const VKDatabaseGetSchoolsResponse({
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

  factory VKDatabaseGetSchoolsResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKDatabaseGetSchoolsResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map<VKDatabaseSchool>(
            (item) => VKDatabaseSchool.fromMap(item),
          )
          ?.toList(),
    );
  }
}

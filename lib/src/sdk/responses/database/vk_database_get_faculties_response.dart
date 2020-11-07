import '../../objects/vk_objects.dart';

class VKDatabaseGetFacultiesResponse {
  /// Total number.
  final int count;

  final List<VKDatabaseFaculty> items;

  const VKDatabaseGetFacultiesResponse({
    this.count,
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap())?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKDatabaseGetFacultiesResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKDatabaseGetFacultiesResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map((item) => VKDatabaseFaculty.fromMap(item))
          ?.toList(),
    );
  }
}

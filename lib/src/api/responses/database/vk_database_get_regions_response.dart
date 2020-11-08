import '../../objects/vk_objects.dart';

class VKDatabaseGetRegionsResponse {
  /// Total number.
  final int count;

  final List<VKDatabaseRegion> items;

  const VKDatabaseGetRegionsResponse({
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

  factory VKDatabaseGetRegionsResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKDatabaseGetRegionsResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map<VKDatabaseRegion>(
            (item) => VKDatabaseRegion.fromMap(item),
          )
          ?.toList(),
    );
  }
}

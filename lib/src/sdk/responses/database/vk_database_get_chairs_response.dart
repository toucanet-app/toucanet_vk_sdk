import '../../objects/vk_objects.dart';

class VKDatabaseGetChairsResponse {
  /// Total number.
  final int count;

  final List<VKBaseObject> items;

  const VKDatabaseGetChairsResponse({
    this.count,
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap())?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKDatabaseGetChairsResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKDatabaseGetChairsResponse(
      count: map['count'] as int,
      items: map['items']?.map((item) => VKBaseObject.fromMap(item))?.toList(),
    );
  }
}

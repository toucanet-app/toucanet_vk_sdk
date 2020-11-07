import '../../objects/vk_objects.dart';

class VKDatabaseGetMetroStationsResponse {
  /// Total number.
  final int count;

  final List<VKDatabaseStation> items;

  const VKDatabaseGetMetroStationsResponse({
    this.count,
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKDatabaseGetMetroStationsResponse.fromMap(Map<String, dynamic> map) {
    return VKDatabaseGetMetroStationsResponse(
      count: map['count'] as int,
      items: map['items']?.map((item) => VKDatabaseStation.fromMap(item)),
    );
  }
}

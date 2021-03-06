import '../../objects/vk_objects.dart';

class VKUsersSearchResponse {
  /// Total number of available results.
  final int count;

  final List<VKUsersUserFull> items;

  const VKUsersSearchResponse({
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

  factory VKUsersSearchResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKUsersSearchResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map<VKUsersUserFull>(
            (item) => VKUsersUserFull.fromMap(item),
          )
          ?.toList(),
    );
  }
}

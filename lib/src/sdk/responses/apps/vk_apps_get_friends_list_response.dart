import '../../objects/vk_objects.dart';

class VKAppsGetFriendsListResponse {
  /// Total number.
  final int count;

  final List<VKUsersUserFull> items;

  const VKAppsGetFriendsListResponse({
    this.count,
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap())?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAppsGetFriendsListResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAppsGetFriendsListResponse(
      count: map['count'] as int,
      items:
          map['items']?.map((item) => VKUsersUserFull.fromMap(item))?.toList(),
    );
  }
}

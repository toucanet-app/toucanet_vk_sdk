import '../../objects/vk_objects.dart';

class VKFriendsGetRequestsNeedMutualResponse {
  /// Total requests number.
  final int count;

  final List<VKFriendsRequests> items;

  const VKFriendsGetRequestsNeedMutualResponse({
    this.count,
    this.items,
  }) : assert(count == null || count >= 0);

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

  factory VKFriendsGetRequestsNeedMutualResponse.fromMap(
      Map<String, dynamic> map) {
    if (map == null) return null;

    return VKFriendsGetRequestsNeedMutualResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map<VKFriendsRequests>(
            (item) => VKFriendsRequests.fromMap(item),
          )
          ?.toList(),
    );
  }
}

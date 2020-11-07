import '../../objects/vk_objects.dart';

class VKFriendsGetRequestsNeedMutualResponse {
  /// Total requests number.
  final int count;

  final List<VKFriendsRequests> items;

  const VKFriendsGetRequestsNeedMutualResponse({
    this.count,
    this.items,
  }) : assert(count >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKFriendsGetRequestsNeedMutualResponse.fromMap(
      Map<String, dynamic> map) {
    return VKFriendsGetRequestsNeedMutualResponse(
      count: map['count'] as int,
      items: map['items']?.map((item) => VKFriendsRequests.fromMap(item)),
    );
  }
}

import '../../objects/vk_objects.dart';

class VKFriendsGetRequestsExtendedResponse {
  /// Total requests number.
  final int count;

  final List<VKFriendsRequestsXtrMessage> items;

  const VKFriendsGetRequestsExtendedResponse({
    this.count,
    this.items,
  }) : assert(count >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKFriendsGetRequestsExtendedResponse.fromMap(
      Map<String, dynamic> map) {
    return VKFriendsGetRequestsExtendedResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map((item) => VKFriendsRequestsXtrMessage.fromMap(item)),
    );
  }
}

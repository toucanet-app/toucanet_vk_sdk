import '../../objects/vk_objects.dart';

class VKOrdersGetUserSubscriptionsResponse {
  /// Total number.
  final int count;

  final List<VKOrdersSubscription> items;

  const VKOrdersGetUserSubscriptionsResponse({
    this.count,
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKOrdersGetUserSubscriptionsResponse.fromMap(
      Map<String, dynamic> map) {
    return VKOrdersGetUserSubscriptionsResponse(
      count: map['count'] as int,
      items: map['items']?.map((item) => VKOrdersSubscription.fromMap(item)),
    );
  }
}

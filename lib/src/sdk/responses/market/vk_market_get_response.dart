import '../../objects/vk_objects.dart';

class VKMarketGetResponse {
  /// Total number.
  final int count;

  final List<VKMarketMarketItem> items;

  const VKMarketGetResponse({
    this.count,
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMarketGetResponse.fromMap(Map<String, dynamic> map) {
    return VKMarketGetResponse(
      count: map['count'] as int,
      items: map['items']?.map((item) => VKMarketMarketItem.fromMap(item)),
    );
  }
}

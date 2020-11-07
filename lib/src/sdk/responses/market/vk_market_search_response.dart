import '../../objects/vk_objects.dart';

class VKMarketSearchResponse {
  /// Total number.
  final int count;

  final List<VKMarketMarketItem> items;

  const VKMarketSearchResponse({
    this.count,
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap())?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMarketSearchResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKMarketSearchResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map((item) => VKMarketMarketItem.fromMap(item))
          ?.toList(),
    );
  }
}

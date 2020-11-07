import '../../objects/vk_objects.dart';

class VKMarketGetByIdExtendedResponse {
  /// Total number.
  final int count;

  final List<VKMarketMarketItemFull> items;

  const VKMarketGetByIdExtendedResponse({
    this.count,
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap())?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMarketGetByIdExtendedResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKMarketGetByIdExtendedResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map((item) => VKMarketMarketItemFull.fromMap(item))
          ?.toList(),
    );
  }
}

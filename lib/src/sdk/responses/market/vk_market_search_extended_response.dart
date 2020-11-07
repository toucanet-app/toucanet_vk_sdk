import '../../objects/vk_objects.dart';

class VKMarketSearchExtendedResponse {
  /// Total number.
  final int count;

  final List<VKMarketMarketItemFull> items;

  const VKMarketSearchExtendedResponse({
    this.count,
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMarketSearchExtendedResponse.fromMap(Map<String, dynamic> map) {
    return VKMarketSearchExtendedResponse(
      count: map['count'] as int,
      items: map['items']?.map((item) => VKMarketMarketItemFull.fromMap(item)),
    );
  }
}

import '../../objects/vk_objects.dart';

class VKMarketGetExtendedResponse {
  /// Total number.
  final int count;

  final List<VKMarketMarketItemFull> items;

  const VKMarketGetExtendedResponse({
    this.count,
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMarketGetExtendedResponse.fromMap(Map<String, dynamic> map) {
    return VKMarketGetExtendedResponse(
      count: map['count'] as int,
      items: map['items']?.map((item) => VKMarketMarketItemFull.fromMap(item)),
    );
  }
}

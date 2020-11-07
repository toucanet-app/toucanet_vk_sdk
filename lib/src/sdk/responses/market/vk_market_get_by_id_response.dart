import '../../objects/vk_objects.dart';

class VKMarketGetByIdResponse {
  /// Total number.
  final int count;

  final List<VKMarketMarketItem> items;

  const VKMarketGetByIdResponse({
    this.count,
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMarketGetByIdResponse.fromMap(Map<String, dynamic> map) {
    return VKMarketGetByIdResponse(
      count: map['count'] as int,
      items: map['items']?.map((item) => VKMarketMarketItem.fromMap(item)),
    );
  }
}

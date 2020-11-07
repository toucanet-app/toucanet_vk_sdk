import '../../objects/vk_objects.dart';

class VKMarketGetCategoriesResponse {
  /// Total number.
  final int count;

  final List<VKMarketMarketCategory> items;

  const VKMarketGetCategoriesResponse({
    this.count,
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMarketGetCategoriesResponse.fromMap(Map<String, dynamic> map) {
    return VKMarketGetCategoriesResponse(
      count: map['count'] as int,
      items: map['items']?.map((item) => VKMarketMarketCategory.fromMap(item)),
    );
  }
}

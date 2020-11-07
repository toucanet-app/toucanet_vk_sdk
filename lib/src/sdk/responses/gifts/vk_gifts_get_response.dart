import '../../objects/vk_objects.dart';

class VKGiftsGetResponse {
  /// Total number.
  final int count;

  final List<VKGiftsGift> items;

  const VKGiftsGetResponse({
    this.count,
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKGiftsGetResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKGiftsGetResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map<VKGiftsGift>(
            (item) => VKGiftsGift.fromMap(item),
          )
          ?.toList(),
    );
  }
}

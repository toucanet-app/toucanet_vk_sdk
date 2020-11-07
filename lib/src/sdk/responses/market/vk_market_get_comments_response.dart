import '../../objects/vk_objects.dart';

class VKMarketGetCommentsResponse {
  /// Total number.
  final int count;

  final List<VKWallWallComment> items;

  const VKMarketGetCommentsResponse({
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

  factory VKMarketGetCommentsResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKMarketGetCommentsResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map<VKWallWallComment>(
            (item) => VKWallWallComment.fromMap(item),
          )
          ?.toList(),
    );
  }
}

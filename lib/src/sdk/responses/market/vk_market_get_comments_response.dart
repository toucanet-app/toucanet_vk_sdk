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
      'items': items?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMarketGetCommentsResponse.fromMap(Map<String, dynamic> map) {
    return VKMarketGetCommentsResponse(
      count: map['count'] as int,
      items: map['items']?.map((item) => VKWallWallComment.fromMap(item)),
    );
  }
}

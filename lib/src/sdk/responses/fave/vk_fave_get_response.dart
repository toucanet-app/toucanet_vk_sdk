import '../../objects/vk_objects.dart';

class VKFaveGetResponse {
  /// Total number.
  final int count;

  final List<VKFaveBookmark> items;

  const VKFaveGetResponse({
    this.count,
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKFaveGetResponse.fromMap(Map<String, dynamic> map) {
    return VKFaveGetResponse(
      count: map['count'] as int,
      items: map['items']?.map((item) => VKFaveBookmark.fromMap(item)),
    );
  }
}

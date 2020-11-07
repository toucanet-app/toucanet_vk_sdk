import '../../objects/vk_objects.dart';

class VKPhotosGetCommentsResponse {
  /// Total number.
  final int count;

  /// Real offset of the comments.
  final int realOffset;

  final List<VKWallWallComment> items;

  const VKPhotosGetCommentsResponse({
    this.count,
    this.realOffset,
    this.items,
  }) : assert(realOffset == null || realOffset >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'real_offset': realOffset,
      'items': items?.map((item) => item?.toMap())?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPhotosGetCommentsResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKPhotosGetCommentsResponse(
      count: map['count'] as int,
      realOffset: map['real_offset'] as int,
      items: map['items']
          ?.map((item) => VKWallWallComment.fromMap(item))
          ?.toList(),
    );
  }
}

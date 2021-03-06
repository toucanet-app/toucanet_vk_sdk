import '../../objects/vk_objects.dart';

class VKPhotosGetAllCommentsResponse {
  /// Total number.
  final int count;

  final List<VKPhotosCommentXtrPid> items;

  const VKPhotosGetAllCommentsResponse({
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

  factory VKPhotosGetAllCommentsResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKPhotosGetAllCommentsResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map<VKPhotosCommentXtrPid>(
            (item) => VKPhotosCommentXtrPid.fromMap(item),
          )
          ?.toList(),
    );
  }
}

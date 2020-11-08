import '../../objects/vk_objects.dart';

class VKPhotosGetAllResponse {
  /// Total number.
  final int count;

  final List<VKPhotosPhotoXtrRealOffset> items;

  /// Information whether next page is presented.
  final VKBaseBoolInt more;

  const VKPhotosGetAllResponse({
    this.count,
    this.items,
    this.more,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
      'more': more?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPhotosGetAllResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKPhotosGetAllResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map<VKPhotosPhotoXtrRealOffset>(
            (item) => VKPhotosPhotoXtrRealOffset.fromMap(item),
          )
          ?.toList(),
      more: VKBaseBoolInt(map['more']),
    );
  }
}

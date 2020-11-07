import '../../objects/vk_objects.dart';

class VKPhotosGetAllExtendedResponse {
  /// Total number.
  final int count;

  final List<VKPhotosPhotoFullXtrRealOffset> items;

  /// Information whether next page is presented.
  final VKBaseBoolInt more;

  const VKPhotosGetAllExtendedResponse({
    this.count,
    this.items,
    this.more,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap()),
      'more': more?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPhotosGetAllExtendedResponse.fromMap(Map<String, dynamic> map) {
    return VKPhotosGetAllExtendedResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map((item) => VKPhotosPhotoFullXtrRealOffset.fromMap(item)),
      more: VKBaseBoolInt(map['more']),
    );
  }
}

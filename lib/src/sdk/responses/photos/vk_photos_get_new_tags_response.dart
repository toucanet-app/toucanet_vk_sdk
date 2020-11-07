import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKPhotosGetNewTagsResponse {
  /// Total number.
  final int count;

  final List<VKPhotosPhotoXtrTagInfo> items;

  const VKPhotosGetNewTagsResponse({
    @required this.count,
    @required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPhotosGetNewTagsResponse.fromMap(Map<String, dynamic> map) {
    return VKPhotosGetNewTagsResponse(
      count: map['count'] as int,
      items: map['items']?.map((item) => VKPhotosPhotoXtrTagInfo.fromMap(item)),
    );
  }
}

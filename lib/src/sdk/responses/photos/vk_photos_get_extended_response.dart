import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKPhotosGetExtendedResponse {
  /// Total number.
  final int count;

  final List<VKPhotosPhotoFull> items;

  const VKPhotosGetExtendedResponse({
    @required this.count,
    @required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPhotosGetExtendedResponse.fromMap(Map<String, dynamic> map) {
    return VKPhotosGetExtendedResponse(
      count: map['count'] as int,
      items: map['items']?.map((item) => VKPhotosPhotoFull.fromMap(item)),
    );
  }
}

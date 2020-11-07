import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKPhotosGetUserPhotosExtendedResponse {
  /// Total number.
  final int count;

  final List<VKPhotosPhotoFull> items;

  const VKPhotosGetUserPhotosExtendedResponse({
    @required this.count,
    @required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPhotosGetUserPhotosExtendedResponse.fromMap(
      Map<String, dynamic> map) {
    return VKPhotosGetUserPhotosExtendedResponse(
      count: map['count'] as int,
      items: map['items']?.map((item) => VKPhotosPhotoFull.fromMap(item)),
    );
  }
}

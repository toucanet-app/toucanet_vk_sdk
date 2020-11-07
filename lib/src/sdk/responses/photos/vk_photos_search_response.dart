import '../../objects/vk_objects.dart';

class VKPhotosSearchResponse {
  /// Total number.
  final int count;

  final List<VKPhotosPhoto> items;

  const VKPhotosSearchResponse({
    this.count,
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap())?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPhotosSearchResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKPhotosSearchResponse(
      count: map['count'] as int,
      items: map['items']?.map((item) => VKPhotosPhoto.fromMap(item))?.toList(),
    );
  }
}

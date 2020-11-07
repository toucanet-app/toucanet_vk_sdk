import '../../objects/vk_objects.dart';

class VKDocsGetTypesResponse {
  /// Total number.
  final int count;

  final List<VKDocsDocTypes> items;

  const VKDocsGetTypesResponse({
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

  factory VKDocsGetTypesResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKDocsGetTypesResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map<VKDocsDocTypes>(
            (item) => VKDocsDocTypes.fromMap(item),
          )
          ?.toList(),
    );
  }
}

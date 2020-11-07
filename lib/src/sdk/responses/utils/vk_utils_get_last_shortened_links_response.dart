import '../../objects/vk_objects.dart';

class VKUtilsGetLastShortenedLinksResponse {
  /// Total number of available results.
  final int count;

  final List<VKUtilsLastShortenedLink> items;

  const VKUtilsGetLastShortenedLinksResponse({
    this.count,
    this.items,
  }) : assert(count >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKUtilsGetLastShortenedLinksResponse.fromMap(
      Map<String, dynamic> map) {
    return VKUtilsGetLastShortenedLinksResponse(
      count: map['count'] as int,
      items:
          map['items']?.map((item) => VKUtilsLastShortenedLink.fromMap(item)),
    );
  }
}

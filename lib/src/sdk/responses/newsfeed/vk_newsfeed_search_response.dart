import '../../objects/vk_objects.dart';

class VKNewsfeedSearchResponse {
  final List<VKWallWallpostFull> items;

  final List<String> suggestedQueries;

  final String nextFrom;

  /// Filtered number.
  final int count;

  /// Total number.
  final int totalCount;

  const VKNewsfeedSearchResponse({
    this.items,
    this.suggestedQueries,
    this.nextFrom,
    this.count,
    this.totalCount,
  })  : assert(count == null || count >= 0),
        assert(totalCount == null || totalCount >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': items
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
      'suggested_queries': suggestedQueries,
      'next_from': nextFrom,
      'count': count,
      'total_count': totalCount,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKNewsfeedSearchResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKNewsfeedSearchResponse(
      items: map['items']
          ?.map<VKWallWallpostFull>(
            (item) => VKWallWallpostFull.fromMap(item),
          )
          ?.toList(),
      suggestedQueries: map['suggested_queries'] as List<String>,
      nextFrom: map['next_from'] as String,
      count: map['count'] as int,
      totalCount: map['total_count'] as int,
    );
  }
}

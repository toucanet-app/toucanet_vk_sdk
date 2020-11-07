import '../../objects/vk_objects.dart';

class VKNewsfeedSearchExtendedResponse {
  final List<VKWallWallpostFull> items;

  final List<VKUsersUserFull> profiles;

  final List<VKGroupsGroupFull> groups;

  final List<String> suggestedQueries;

  final String nextFrom;

  /// Filtered number.
  final int count;

  /// Total number.
  final int totalCount;

  const VKNewsfeedSearchExtendedResponse({
    this.items,
    this.profiles,
    this.groups,
    this.suggestedQueries,
    this.nextFrom,
    this.count,
    this.totalCount,
  })  : assert(count >= 0),
        assert(totalCount >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': items?.map((item) => item?.toMap()),
      'profiles': profiles?.map((item) => item?.toMap()),
      'groups': groups?.map((item) => item?.toMap()),
      'suggested_queries': suggestedQueries,
      'next_from': nextFrom,
      'count': count,
      'total_count': totalCount,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKNewsfeedSearchExtendedResponse.fromMap(Map<String, dynamic> map) {
    return VKNewsfeedSearchExtendedResponse(
      items: map['items']?.map((item) => VKWallWallpostFull.fromMap(item)),
      profiles: map['profiles']?.map((item) => VKUsersUserFull.fromMap(item)),
      groups: map['groups']?.map((item) => VKGroupsGroupFull.fromMap(item)),
      suggestedQueries: map['suggested_queries'] as List<String>,
      nextFrom: map['next_from'] as String,
      count: map['count'] as int,
      totalCount: map['total_count'] as int,
    );
  }
}

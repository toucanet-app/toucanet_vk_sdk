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
  })  : assert(count == null || count >= 0),
        assert(totalCount == null || totalCount >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': items
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
      'profiles': profiles
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
      'groups': groups
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

  factory VKNewsfeedSearchExtendedResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKNewsfeedSearchExtendedResponse(
      items: map['items']
          ?.map<VKWallWallpostFull>(
            (item) => VKWallWallpostFull.fromMap(item),
          )
          ?.toList(),
      profiles: map['profiles']
          ?.map<VKUsersUserFull>(
            (item) => VKUsersUserFull.fromMap(item),
          )
          ?.toList(),
      groups: map['groups']
          ?.map<VKGroupsGroupFull>(
            (item) => VKGroupsGroupFull.fromMap(item),
          )
          ?.toList(),
      suggestedQueries: map['suggested_queries'] as List<String>,
      nextFrom: map['next_from'] as String,
      count: map['count'] as int,
      totalCount: map['total_count'] as int,
    );
  }
}

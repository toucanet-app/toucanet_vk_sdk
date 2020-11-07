import '../../objects/vk_objects.dart';

class VKNewsfeedGetRecommendedResponse {
  // final List<VKNewsfeedNewsfeedItem> items;

  final List<VKUsersUserFull> profiles;

  final List<VKGroupsGroupFull> groups;

  /// New offset value.
  final String newOffset;

  /// Next from value.
  final String nextFrom;

  const VKNewsfeedGetRecommendedResponse({
    // this.items,
    this.profiles,
    this.groups,
    this.newOffset,
    this.nextFrom,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      // 'items': items
      //     ?.map(
      //       (item) => item?.toMap(),
      //     )
      //     ?.toList(),
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
      'new_offset': newOffset,
      'next_from': nextFrom,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKNewsfeedGetRecommendedResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKNewsfeedGetRecommendedResponse(
      // items: map['items']
      //     ?.map<VKNewsfeedNewsfeedItem>(
      //       (item) => VKNewsfeedNewsfeedItem.fromMap(item),
      //     )
      //     ?.toList(),
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
      newOffset: map['new_offset'] as String,
      nextFrom: map['next_from'] as String,
    );
  }
}

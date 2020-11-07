import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKNewsfeedGetCommentsResponse {
  // final List<VKNewsfeedNewsfeedItem> items;

  final List<VKUsersUserFull> profiles;

  final List<VKGroupsGroupFull> groups;

  /// New from value.
  final String nextFrom;

  const VKNewsfeedGetCommentsResponse({
    // @required this.items,
    @required this.profiles,
    @required this.groups,
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
      'next_from': nextFrom,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKNewsfeedGetCommentsResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKNewsfeedGetCommentsResponse(
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
      nextFrom: map['next_from'] as String,
    );
  }
}

import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKStoriesGetByIdExtendedResponse {
  /// Stories count.
  final int count;

  final List<VKStoriesStory> items;

  final List<VKUsersUserFull> profiles;

  final List<VKGroupsGroupFull> groups;

  const VKStoriesGetByIdExtendedResponse({
    @required this.count,
    @required this.items,
    @required this.profiles,
    @required this.groups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap()),
      'profiles': profiles?.map((item) => item?.toMap()),
      'groups': groups?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKStoriesGetByIdExtendedResponse.fromMap(Map<String, dynamic> map) {
    return VKStoriesGetByIdExtendedResponse(
      count: map['count'] as int,
      items: map['items']?.map((item) => VKStoriesStory.fromMap(item)),
      profiles: map['profiles']?.map((item) => VKUsersUserFull.fromMap(item)),
      groups: map['groups']?.map((item) => VKGroupsGroupFull.fromMap(item)),
    );
  }
}

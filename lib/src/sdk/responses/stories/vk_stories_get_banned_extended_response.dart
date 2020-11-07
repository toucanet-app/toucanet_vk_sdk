import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKStoriesGetBannedExtendedResponse {
  /// Stories count.
  final int count;

  /// The list of Owner ID.
  final List<int> items;

  final List<VKUsersUserFull> profiles;

  final List<VKGroupsGroupFull> groups;

  const VKStoriesGetBannedExtendedResponse({
    @required this.count,
    @required this.items,
    @required this.profiles,
    @required this.groups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items,
      'profiles': profiles?.map((item) => item?.toMap()),
      'groups': groups?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKStoriesGetBannedExtendedResponse.fromMap(Map<String, dynamic> map) {
    return VKStoriesGetBannedExtendedResponse(
      count: map['count'] as int,
      items: map['items'] as List<int>,
      profiles: map['profiles']?.map((item) => VKUsersUserFull.fromMap(item)),
      groups: map['groups']?.map((item) => VKGroupsGroupFull.fromMap(item)),
    );
  }
}

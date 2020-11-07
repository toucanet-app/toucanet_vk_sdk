import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKVideoSearchExtendedResponse {
  /// Total number.
  final int count;

  final List<VKVideoVideo> items;

  final List<VKUsersUserMin> profiles;

  final List<VKGroupsGroupFull> groups;

  const VKVideoSearchExtendedResponse({
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

  factory VKVideoSearchExtendedResponse.fromMap(Map<String, dynamic> map) {
    return VKVideoSearchExtendedResponse(
      count: map['count'] as int,
      items: map['items']?.map((item) => VKVideoVideo.fromMap(item)),
      profiles: map['profiles']?.map((item) => VKUsersUserMin.fromMap(item)),
      groups: map['groups']?.map((item) => VKGroupsGroupFull.fromMap(item)),
    );
  }
}

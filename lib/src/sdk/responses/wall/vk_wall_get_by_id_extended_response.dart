import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKWallGetByIdExtendedResponse {
  final List<VKWallWallpostFull> items;

  final List<VKUsersUserFull> profiles;

  final List<VKGroupsGroupFull> groups;

  const VKWallGetByIdExtendedResponse({
    @required this.items,
    @required this.profiles,
    @required this.groups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': items?.map((item) => item?.toMap()),
      'profiles': profiles?.map((item) => item?.toMap()),
      'groups': groups?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKWallGetByIdExtendedResponse.fromMap(Map<String, dynamic> map) {
    return VKWallGetByIdExtendedResponse(
      items: map['items']?.map((item) => VKWallWallpostFull.fromMap(item)),
      profiles: map['profiles']?.map((item) => VKUsersUserFull.fromMap(item)),
      groups: map['groups']?.map((item) => VKGroupsGroupFull.fromMap(item)),
    );
  }
}

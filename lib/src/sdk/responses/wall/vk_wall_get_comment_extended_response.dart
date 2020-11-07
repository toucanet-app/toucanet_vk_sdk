import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKWallGetCommentExtendedResponse {
  final List<VKWallWallComment> items;

  final List<VKUsersUser> profiles;

  final List<VKGroupsGroup> groups;

  const VKWallGetCommentExtendedResponse({
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

  factory VKWallGetCommentExtendedResponse.fromMap(Map<String, dynamic> map) {
    return VKWallGetCommentExtendedResponse(
      items: map['items']?.map((item) => VKWallWallComment.fromMap(item)),
      profiles: map['profiles']?.map((item) => VKUsersUser.fromMap(item)),
      groups: map['groups']?.map((item) => VKGroupsGroup.fromMap(item)),
    );
  }
}

import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKPhotosGetCommentsExtendedResponse {
  /// Total number.
  final int count;

  /// Real offset of the comments.
  final int realOffset;

  final List<VKWallWallComment> items;

  final List<VKUsersUserFull> profiles;

  final List<VKGroupsGroupFull> groups;

  const VKPhotosGetCommentsExtendedResponse({
    @required this.count,
    this.realOffset,
    @required this.items,
    @required this.profiles,
    @required this.groups,
  }) : assert(realOffset >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'real_offset': realOffset,
      'items': items?.map((item) => item?.toMap()),
      'profiles': profiles?.map((item) => item?.toMap()),
      'groups': groups?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPhotosGetCommentsExtendedResponse.fromMap(
      Map<String, dynamic> map) {
    return VKPhotosGetCommentsExtendedResponse(
      count: map['count'] as int,
      realOffset: map['real_offset'] as int,
      items: map['items']?.map((item) => VKWallWallComment.fromMap(item)),
      profiles: map['profiles']?.map((item) => VKUsersUserFull.fromMap(item)),
      groups: map['groups']?.map((item) => VKGroupsGroupFull.fromMap(item)),
    );
  }
}

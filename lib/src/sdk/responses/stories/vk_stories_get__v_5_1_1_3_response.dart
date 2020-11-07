import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKStoriesGetV5113Response {
  final int count;

  final List<VKStoriesFeedItem> items;

  final List<VKUsersUser> profiles;

  final List<VKGroupsGroup> groups;

  final bool needUploadScreen;

  const VKStoriesGetV5113Response({
    @required this.count,
    @required this.items,
    this.profiles,
    this.groups,
    this.needUploadScreen,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap()),
      'profiles': profiles?.map((item) => item?.toMap()),
      'groups': groups?.map((item) => item?.toMap()),
      'need_upload_screen': needUploadScreen,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKStoriesGetV5113Response.fromMap(Map<String, dynamic> map) {
    return VKStoriesGetV5113Response(
      count: map['count'] as int,
      items: map['items']?.map((item) => VKStoriesFeedItem.fromMap(item)),
      profiles: map['profiles']?.map((item) => VKUsersUser.fromMap(item)),
      groups: map['groups']?.map((item) => VKGroupsGroup.fromMap(item)),
      needUploadScreen: map['need_upload_screen'] as bool,
    );
  }
}

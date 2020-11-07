import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKStoriesGetResponse {
  /// Stories count.
  final int count;

  final List<List> items;

  final VKStoriesPromoBlock promoData;

  final List<VKUsersUser> profiles;

  final List<VKGroupsGroup> groups;

  final bool needUploadScreen;

  const VKStoriesGetResponse({
    @required this.count,
    @required this.items,
    this.promoData,
    this.profiles,
    this.groups,
    this.needUploadScreen,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items,
      'promo_data': promoData?.toMap(),
      'profiles': profiles?.map((item) => item?.toMap())?.toList(),
      'groups': groups?.map((item) => item?.toMap())?.toList(),
      'need_upload_screen': needUploadScreen,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKStoriesGetResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKStoriesGetResponse(
      count: map['count'] as int,
      items: map['items'] as List<List>,
      promoData: VKStoriesPromoBlock.fromMap(map['promo_data']),
      profiles:
          map['profiles']?.map((item) => VKUsersUser.fromMap(item))?.toList(),
      groups:
          map['groups']?.map((item) => VKGroupsGroup.fromMap(item))?.toList(),
      needUploadScreen: map['need_upload_screen'] as bool,
    );
  }
}

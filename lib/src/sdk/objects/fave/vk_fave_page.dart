import 'package:meta/meta.dart';

import '../groups/vk_groups_group_full.dart';
import '../users/vk_users_user_full.dart';
import 'vk_fave_page_type.dart';
import 'vk_fave_tag.dart';

class VKFavePage {
  /// Some info about user or group.
  final String description;

  final VKGroupsGroupFull group;

  final List<VKFaveTag> tags;

  /// Item type.
  final VKFavePageType type;

  /// Timestamp, when this page was bookmarked.
  final int updatedDate;

  final VKUsersUserFull user;

  const VKFavePage({
    @required this.description,
    this.group,
    @required this.tags,
    @required this.type,
    this.updatedDate,
    this.user,
  }) : assert(updatedDate == null || updatedDate >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'group': group?.toMap(),
      'tags': tags
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
      'type': type?.value,
      'updated_date': updatedDate,
      'user': user?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKFavePage.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKFavePage(
      description: map['description'] as String,
      group: VKGroupsGroupFull.fromMap(map['group']),
      tags: map['tags']
          ?.map<VKFaveTag>(
            (item) => VKFaveTag.fromMap(item),
          )
          ?.toList(),
      type: VKFavePageType(map['type']),
      updatedDate: map['updated_date'] as int,
      user: VKUsersUserFull.fromMap(map['user']),
    );
  }
}

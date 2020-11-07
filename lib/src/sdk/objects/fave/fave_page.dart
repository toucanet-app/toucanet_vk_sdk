import 'package:meta/meta.dart';

import '../groups/groups_group_full.dart';
import '../users/users_user_full.dart';
import 'fave_page_type.dart';
import 'fave_tag.dart';

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
  }) : assert(updatedDate >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'group': group?.toMap(),
      'tags': tags?.map((item) => item?.toMap()),
      'type': type?.value,
      'updated_date': updatedDate,
      'user': user?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKFavePage.fromMap(Map<String, dynamic> map) {
    return VKFavePage(
      description: map['description'] as String,
      group: VKGroupsGroupFull.fromMap(map['group']),
      tags: map['tags']?.map((item) => VKFaveTag.fromMap(item)),
      type: VKFavePageType(map['type']),
      updatedDate: map['updated_date'] as int,
      user: VKUsersUserFull.fromMap(map['user']),
    );
  }
}

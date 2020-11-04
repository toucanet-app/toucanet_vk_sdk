import 'groups_group_full.dart';
import 'fave_tag.dart';
import 'fave_page_type.dart';
import 'users_user_full.dart';
import 'package:meta/meta.dart';

class FavePage {
  /// Some info about user or group.
  final String description;

  final GroupsGroupFull group;

  final List<FaveTag> tags;

  /// Item type.
  final FavePageType type;

  /// Timestamp, when this page was bookmarked.
  final int updatedDate;

  final UsersUserFull user;

  const FavePage({
    @required this.description,
    this.group,
    @required this.tags,
    @required this.type,
    this.updatedDate,
    this.user,
  });

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

  factory FavePage.fromMap(Map<String, dynamic> map) {
    return FavePage(
      description: map['description'] as String,
      group: GroupsGroupFull.fromMap(map['group']),
      tags: map['tags']?.map((item) => FaveTag.fromMap(item)),
      type: FavePageType(map['type']),
      updatedDate: map['updated_date'] as int,
      user: UsersUserFull.fromMap(map['user']),
    );
  }
}

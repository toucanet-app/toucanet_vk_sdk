import 'groups_ban_info.dart';
import 'groups_group.dart';
import 'users_user.dart';
import 'groups_owner_xtr_ban_info_type.dart';

class GroupsOwnerXtrBanInfo {
  final GroupsBanInfo banInfo;

  /// Information about group if type = group.
  final GroupsGroup group;

  /// Information about group if type = profile.
  final UsersUser profile;

  final GroupsOwnerXtrBanInfoType type;

  const GroupsOwnerXtrBanInfo({
    this.banInfo,
    this.group,
    this.profile,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ban_info': banInfo?.toMap(),
      'group': group?.toMap(),
      'profile': profile?.toMap(),
      'type': type?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory GroupsOwnerXtrBanInfo.fromMap(Map<String, dynamic> map) {
    return GroupsOwnerXtrBanInfo(
      banInfo: GroupsBanInfo.fromMap(map['ban_info']),
      group: GroupsGroup.fromMap(map['group']),
      profile: UsersUser.fromMap(map['profile']),
      type: GroupsOwnerXtrBanInfoType(map['type']),
    );
  }
}

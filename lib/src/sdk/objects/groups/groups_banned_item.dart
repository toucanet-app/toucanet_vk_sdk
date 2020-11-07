import '../users/users_user.dart';
import 'groups_ban_info.dart';
import 'groups_group.dart';
import 'groups_owner_xtr_ban_info_type.dart';

class VKGroupsBannedItem {
  final VKGroupsBanInfo banInfo;

  /// Information about group if type = group.
  final VKGroupsGroup group;

  /// Information about group if type = profile.
  final VKUsersUser profile;

  final VKGroupsOwnerXtrBanInfoType type;

  const VKGroupsBannedItem({
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

  factory VKGroupsBannedItem.fromMap(Map<String, dynamic> map) {
    return VKGroupsBannedItem(
      banInfo: VKGroupsBanInfo.fromMap(map['ban_info']),
      group: VKGroupsGroup.fromMap(map['group']),
      profile: VKUsersUser.fromMap(map['profile']),
      type: VKGroupsOwnerXtrBanInfoType(map['type']),
    );
  }
}

import '../users/vk_users_user.dart';
import 'vk_groups_ban_info.dart';
import 'vk_groups_group.dart';
import 'vk_groups_owner_xtr_ban_info_type.dart';

class VKGroupsOwnerXtrBanInfo {
  final VKGroupsBanInfo banInfo;

  /// Information about group if type = group.
  final VKGroupsGroup group;

  /// Information about group if type = profile.
  final VKUsersUser profile;

  final VKGroupsOwnerXtrBanInfoType type;

  const VKGroupsOwnerXtrBanInfo({
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

  factory VKGroupsOwnerXtrBanInfo.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKGroupsOwnerXtrBanInfo(
      banInfo: VKGroupsBanInfo.fromMap(map['ban_info']),
      group: VKGroupsGroup.fromMap(map['group']),
      profile: VKUsersUser.fromMap(map['profile']),
      type: VKGroupsOwnerXtrBanInfoType(map['type']),
    );
  }
}

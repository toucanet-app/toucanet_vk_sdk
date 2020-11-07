import '../base/vk_base_bool_int.dart';
import 'vk_groups_group_xtr_invited_by_admin_level.dart';
import 'vk_groups_group_xtr_invited_by_type.dart';

class VKGroupsGroupXtrInvitedBy {
  final VKGroupsGroupXtrInvitedByAdminLevel adminLevel;

  /// Community ID.
  final int id;

  /// Inviter ID.
  final int invitedBy;

  /// Information whether current user is manager.
  final VKBaseBoolInt isAdmin;

  /// Information whether current user is advertiser.
  final VKBaseBoolInt isAdvertiser;

  /// Information whether community is closed.
  final VKBaseBoolInt isClosed;

  /// Information whether current user is member.
  final VKBaseBoolInt isMember;

  /// Community name.
  final String name;

  /// URL of square photo of the community with 100 pixels in width.
  final String photo100;

  /// URL of square photo of the community with 200 pixels in width.
  final String photo200;

  /// URL of square photo of the community with 50 pixels in width.
  final String photo50;

  /// Domain of the community page.
  final String screenName;

  final VKGroupsGroupXtrInvitedByType type;

  const VKGroupsGroupXtrInvitedBy({
    this.adminLevel,
    this.id,
    this.invitedBy,
    this.isAdmin,
    this.isAdvertiser,
    this.isClosed,
    this.isMember,
    this.name,
    this.photo100,
    this.photo200,
    this.photo50,
    this.screenName,
    this.type,
  }) : assert(invitedBy == null || invitedBy >= 1);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'admin_level': adminLevel?.value,
      'id': id,
      'invited_by': invitedBy,
      'is_admin': isAdmin?.value,
      'is_advertiser': isAdvertiser?.value,
      'is_closed': isClosed?.value,
      'is_member': isMember?.value,
      'name': name,
      'photo_100': photo100,
      'photo_200': photo200,
      'photo_50': photo50,
      'screen_name': screenName,
      'type': type?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKGroupsGroupXtrInvitedBy.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKGroupsGroupXtrInvitedBy(
      adminLevel: VKGroupsGroupXtrInvitedByAdminLevel(map['admin_level']),
      id: map['id'] as int,
      invitedBy: map['invited_by'] as int,
      isAdmin: VKBaseBoolInt(map['is_admin']),
      isAdvertiser: VKBaseBoolInt(map['is_advertiser']),
      isClosed: VKBaseBoolInt(map['is_closed']),
      isMember: VKBaseBoolInt(map['is_member']),
      name: map['name'] as String,
      photo100: map['photo_100'] as String,
      photo200: map['photo_200'] as String,
      photo50: map['photo_50'] as String,
      screenName: map['screen_name'] as String,
      type: VKGroupsGroupXtrInvitedByType(map['type']),
    );
  }
}

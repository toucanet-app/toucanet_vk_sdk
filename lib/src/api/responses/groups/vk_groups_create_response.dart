import '../../objects/vk_objects.dart';

class VKGroupsCreateResponse {
  final VKGroupsGroupAdminLevel adminLevel;

  /// Information whether community is banned.
  final String deactivated;

  /// Finish date in Unixtime format.
  final int finishDate;

  /// Community ID.
  final int id;

  /// Information whether current user is administrator.
  final VKBaseBoolInt isAdmin;

  /// Information whether current user is advertiser.
  final VKBaseBoolInt isAdvertiser;

  final VKGroupsGroupIsClosed isClosed;

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

  /// Start date in Unixtime format.
  final int startDate;

  final VKGroupsGroupType type;

  const VKGroupsCreateResponse({
    this.adminLevel,
    this.deactivated,
    this.finishDate,
    this.id,
    this.isAdmin,
    this.isAdvertiser,
    this.isClosed,
    this.isMember,
    this.name,
    this.photo100,
    this.photo200,
    this.photo50,
    this.screenName,
    this.startDate,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'admin_level': adminLevel?.value,
      'deactivated': deactivated,
      'finish_date': finishDate,
      'id': id,
      'is_admin': isAdmin?.value,
      'is_advertiser': isAdvertiser?.value,
      'is_closed': isClosed?.value,
      'is_member': isMember?.value,
      'name': name,
      'photo_100': photo100,
      'photo_200': photo200,
      'photo_50': photo50,
      'screen_name': screenName,
      'start_date': startDate,
      'type': type?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKGroupsCreateResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKGroupsCreateResponse(
      adminLevel: VKGroupsGroupAdminLevel(map['admin_level']),
      deactivated: map['deactivated'] as String,
      finishDate: map['finish_date'] as int,
      id: map['id'] as int,
      isAdmin: VKBaseBoolInt(map['is_admin']),
      isAdvertiser: VKBaseBoolInt(map['is_advertiser']),
      isClosed: VKGroupsGroupIsClosed(map['is_closed']),
      isMember: VKBaseBoolInt(map['is_member']),
      name: map['name'] as String,
      photo100: map['photo_100'] as String,
      photo200: map['photo_200'] as String,
      photo50: map['photo_50'] as String,
      screenName: map['screen_name'] as String,
      startDate: map['start_date'] as int,
      type: VKGroupsGroupType(map['type']),
    );
  }
}

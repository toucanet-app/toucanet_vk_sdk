import 'package:meta/meta.dart';

import '../base/base_bool_int.dart';
import '../base/base_sex.dart';
import '../friends/friends_friend_status_status.dart';
import '../friends/friends_requests_mutual.dart';
import 'users_online_info.dart';
import 'users_user_type.dart';

class VKUsersUserXtrType {
  /// Returns if a profile is deleted or blocked.
  final String deactivated;

  /// User first name.
  final String firstName;

  /// Returns if a profile is hidden..
  final int hidden;

  /// User ID.
  final int id;

  /// User last name.
  final String lastName;

  final bool canAccessClosed;

  final bool isClosed;

  /// User sex.
  final VKBaseSex sex;

  /// Domain name of the user's page.
  final String screenName;

  /// URL of square photo of the user with 50 pixels in width.
  final String photo50;

  /// URL of square photo of the user with 100 pixels in width.
  final String photo100;

  final VKUsersOnlineInfo onlineInfo;

  /// Information whether the user is online.
  final VKBaseBoolInt online;

  /// Information whether the user is online in mobile site or application.
  final VKBaseBoolInt onlineMobile;

  /// Application ID.
  final int onlineApp;

  /// Information whether the user is verified.
  final VKBaseBoolInt verified;

  /// Information whether the user has a "fire" pictogram..
  final VKBaseBoolInt trending;

  final VKFriendsFriendStatusStatus friendStatus;

  final VKFriendsRequestsMutual mutual;

  final VKUsersUserType type;

  const VKUsersUserXtrType({
    this.deactivated,
    @required this.firstName,
    this.hidden,
    @required this.id,
    @required this.lastName,
    this.canAccessClosed,
    this.isClosed,
    this.sex,
    this.screenName,
    this.photo50,
    this.photo100,
    this.onlineInfo,
    this.online,
    this.onlineMobile,
    this.onlineApp,
    this.verified,
    this.trending,
    this.friendStatus,
    this.mutual,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deactivated': deactivated,
      'first_name': firstName,
      'hidden': hidden,
      'id': id,
      'last_name': lastName,
      'can_access_closed': canAccessClosed,
      'is_closed': isClosed,
      'sex': sex?.value,
      'screen_name': screenName,
      'photo_50': photo50,
      'photo_100': photo100,
      'online_info': onlineInfo?.toMap(),
      'online': online?.value,
      'online_mobile': onlineMobile?.value,
      'online_app': onlineApp,
      'verified': verified?.value,
      'trending': trending?.value,
      'friend_status': friendStatus?.value,
      'mutual': mutual?.toMap(),
      'type': type?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKUsersUserXtrType.fromMap(Map<String, dynamic> map) {
    return VKUsersUserXtrType(
      deactivated: map['deactivated'] as String,
      firstName: map['first_name'] as String,
      hidden: map['hidden'] as int,
      id: map['id'] as int,
      lastName: map['last_name'] as String,
      canAccessClosed: map['can_access_closed'] as bool,
      isClosed: map['is_closed'] as bool,
      sex: VKBaseSex(map['sex']),
      screenName: map['screen_name'] as String,
      photo50: map['photo_50'] as String,
      photo100: map['photo_100'] as String,
      onlineInfo: VKUsersOnlineInfo.fromMap(map['online_info']),
      online: VKBaseBoolInt(map['online']),
      onlineMobile: VKBaseBoolInt(map['online_mobile']),
      onlineApp: map['online_app'] as int,
      verified: VKBaseBoolInt(map['verified']),
      trending: VKBaseBoolInt(map['trending']),
      friendStatus: VKFriendsFriendStatusStatus(map['friend_status']),
      mutual: VKFriendsRequestsMutual.fromMap(map['mutual']),
      type: VKUsersUserType(map['type']),
    );
  }
}

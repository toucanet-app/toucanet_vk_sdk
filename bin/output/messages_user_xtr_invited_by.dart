import 'base_sex.dart';
import 'users_online_info.dart';
import 'base_bool_int.dart';
import 'friends_friend_status_status.dart';
import 'friends_requests_mutual.dart';
import 'users_user_type.dart';
import 'package:meta/meta.dart';

class MessagesUserXtrInvitedBy {
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
  final BaseSex sex;

  /// Domain name of the user's page.
  final String screenName;

  /// URL of square photo of the user with 50 pixels in width.
  final String photo50;

  /// URL of square photo of the user with 100 pixels in width.
  final String photo100;

  final UsersOnlineInfo onlineInfo;

  /// Information whether the user is online.
  final BaseBoolInt online;

  /// Information whether the user is online in mobile site or application.
  final BaseBoolInt onlineMobile;

  /// Application ID.
  final int onlineApp;

  /// Information whether the user is verified.
  final BaseBoolInt verified;

  /// Information whether the user has a "fire" pictogram..
  final BaseBoolInt trending;

  final FriendsFriendStatusStatus friendStatus;

  final FriendsRequestsMutual mutual;

  final UsersUserType type;

  /// ID of the inviter.
  final int invitedBy;

  const MessagesUserXtrInvitedBy({
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
    this.invitedBy,
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
      'invited_by': invitedBy,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory MessagesUserXtrInvitedBy.fromMap(Map<String, dynamic> map) {
    return MessagesUserXtrInvitedBy(
      deactivated: map['deactivated'] as String,
      firstName: map['first_name'] as String,
      hidden: map['hidden'] as int,
      id: map['id'] as int,
      lastName: map['last_name'] as String,
      canAccessClosed: map['can_access_closed'] as bool,
      isClosed: map['is_closed'] as bool,
      sex: BaseSex(map['sex']),
      screenName: map['screen_name'] as String,
      photo50: map['photo_50'] as String,
      photo100: map['photo_100'] as String,
      onlineInfo: UsersOnlineInfo.fromMap(map['online_info']),
      online: BaseBoolInt(map['online']),
      onlineMobile: BaseBoolInt(map['online_mobile']),
      onlineApp: map['online_app'] as int,
      verified: BaseBoolInt(map['verified']),
      trending: BaseBoolInt(map['trending']),
      friendStatus: FriendsFriendStatusStatus(map['friend_status']),
      mutual: FriendsRequestsMutual.fromMap(map['mutual']),
      type: UsersUserType(map['type']),
      invitedBy: map['invited_by'] as int,
    );
  }
}

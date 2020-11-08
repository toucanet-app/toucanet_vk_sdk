import 'package:meta/meta.dart';

class VKUsersOnlineInfo {
  /// Whether you can see real online status of user or not.
  final bool visible;

  /// Last time we saw user being active.
  final int lastSeen;

  /// Whether user is currently online or not.
  final bool isOnline;

  /// Application id from which user is currently online or was last seen online.
  final int appId;

  /// Is user online from desktop app or mobile app.
  final bool isMobile;

  /// In case user online is not visible, it indicates approximate timeframe of user online.
  final String status;

  const VKUsersOnlineInfo({
    @required this.visible,
    this.lastSeen,
    this.isOnline,
    this.appId,
    this.isMobile,
    this.status,
  })  : assert(lastSeen == null || lastSeen >= 0),
        assert(appId == null || appId >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'visible': visible,
      'last_seen': lastSeen,
      'is_online': isOnline,
      'app_id': appId,
      'is_mobile': isMobile,
      'status': status,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKUsersOnlineInfo.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKUsersOnlineInfo(
      visible: map['visible'] as bool,
      lastSeen: map['last_seen'] as int,
      isOnline: map['is_online'] as bool,
      appId: map['app_id'] as int,
      isMobile: map['is_mobile'] as bool,
      status: map['status'] as String,
    );
  }
}

class VKFriendsGetOnlineOnlineMobileResponse {
  /// The list of User ID.
  final List<int> online;

  /// The list of User ID.
  final List<int> onlineMobile;

  const VKFriendsGetOnlineOnlineMobileResponse({
    this.online,
    this.onlineMobile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'online': online,
      'online_mobile': onlineMobile,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKFriendsGetOnlineOnlineMobileResponse.fromMap(
      Map<String, dynamic> map) {
    return VKFriendsGetOnlineOnlineMobileResponse(
      online: map['online'] as List<int>,
      onlineMobile: map['online_mobile'] as List<int>,
    );
  }
}

class VKUsersLastSeen {
  /// Type of the platform that used for the last authorization.
  final int platform;

  /// Last visit date (in Unix time).
  final int time;

  const VKUsersLastSeen({
    this.platform,
    this.time,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'platform': platform,
      'time': time,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKUsersLastSeen.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKUsersLastSeen(
      platform: map['platform'] as int,
      time: map['time'] as int,
    );
  }
}

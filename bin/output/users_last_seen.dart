

class UsersLastSeen {
  /// Type of the platform that used for the last authorization.
  final int platform;

  /// Last visit date (in Unix time).
  final int time;

  const UsersLastSeen({
    this.platform,
    this.time,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'platform': platform,
      'time': time,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory UsersLastSeen.fromMap(Map<String, dynamic> map) {
    return UsersLastSeen(
      platform: map['platform'] as int,
      time: map['time'] as int,
    );
  }
}

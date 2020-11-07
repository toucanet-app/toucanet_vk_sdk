class VKUtilsStats {
  /// Start time.
  final int timestamp;

  /// Total views number.
  final int views;

  const VKUtilsStats({
    this.timestamp,
    this.views,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'timestamp': timestamp,
      'views': views,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKUtilsStats.fromMap(Map<String, dynamic> map) {
    return VKUtilsStats(
      timestamp: map['timestamp'] as int,
      views: map['views'] as int,
    );
  }
}

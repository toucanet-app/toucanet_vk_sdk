class UtilsStats {
  /// Start time.
  final int timestamp;

  /// Total views number.
  final int views;

  const UtilsStats({
    this.timestamp,
    this.views,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'timestamp': timestamp,
      'views': views,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory UtilsStats.fromMap(Map<String, dynamic> map) {
    return UtilsStats(
      timestamp: map['timestamp'] as int,
      views: map['views'] as int,
    );
  }
}

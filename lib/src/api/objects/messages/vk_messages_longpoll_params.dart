class VKMessagesLongpollParams {
  /// Key.
  final String key;

  /// Persistent timestamp.
  final int pts;

  /// Server URL.
  final String server;

  /// Timestamp.
  final String ts;

  const VKMessagesLongpollParams({
    this.key,
    this.pts,
    this.server,
    this.ts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'pts': pts,
      'server': server,
      'ts': ts,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMessagesLongpollParams.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKMessagesLongpollParams(
      key: map['key'] as String,
      pts: map['pts'] as int,
      server: map['server'] as String,
      ts: map['ts'] as String,
    );
  }
}

import 'package:meta/meta.dart';

class VKGroupsLongPollServer {
  /// Long Poll key.
  final String key;

  /// Long Poll server address.
  final String server;

  /// Number of the last event.
  final String ts;

  const VKGroupsLongPollServer({
    @required this.key,
    @required this.server,
    @required this.ts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'server': server,
      'ts': ts,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKGroupsLongPollServer.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKGroupsLongPollServer(
      key: map['key'] as String,
      server: map['server'] as String,
      ts: map['ts'] as String,
    );
  }
}

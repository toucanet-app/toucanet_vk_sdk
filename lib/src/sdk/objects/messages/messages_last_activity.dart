import 'package:meta/meta.dart';

import '../base/base_bool_int.dart';

class VKMessagesLastActivity {
  /// Information whether user is online.
  final VKBaseBoolInt online;

  /// Time when user was online in Unixtime.
  final int time;

  const VKMessagesLastActivity({
    @required this.online,
    @required this.time,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'online': online?.value,
      'time': time,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMessagesLastActivity.fromMap(Map<String, dynamic> map) {
    return VKMessagesLastActivity(
      online: VKBaseBoolInt(map['online']),
      time: map['time'] as int,
    );
  }
}

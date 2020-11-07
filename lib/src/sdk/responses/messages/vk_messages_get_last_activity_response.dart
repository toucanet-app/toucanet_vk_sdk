import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKMessagesGetLastActivityResponse {
  /// Information whether user is online.
  final VKBaseBoolInt online;

  /// Time when user was online in Unixtime.
  final int time;

  const VKMessagesGetLastActivityResponse({
    @required this.online,
    @required this.time,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'online': online?.value,
      'time': time,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMessagesGetLastActivityResponse.fromMap(Map<String, dynamic> map) {
    return VKMessagesGetLastActivityResponse(
      online: VKBaseBoolInt(map['online']),
      time: map['time'] as int,
    );
  }
}

import 'base_bool_int.dart';
import 'package:meta/meta.dart';

class MessagesLastActivity {
  /// Information whether user is online.
  final BaseBoolInt online;

  /// Time when user was online in Unixtime.
  final int time;

  const MessagesLastActivity({
    @required this.online,
    @required this.time,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'online': online?.value,
      'time': time,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory MessagesLastActivity.fromMap(Map<String, dynamic> map) {
    return MessagesLastActivity(
      online: BaseBoolInt(map['online']),
      time: map['time'] as int,
    );
  }
}

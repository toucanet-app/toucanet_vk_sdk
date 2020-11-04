import 'package:meta/meta.dart';

class GroupsAddressTimetableDay {
  /// Close time of the break in minutes.
  final int breakCloseTime;

  /// Start time of the break in minutes.
  final int breakOpenTime;

  /// Close time in minutes.
  final int closeTime;

  /// Open time in minutes.
  final int openTime;

  const GroupsAddressTimetableDay({
    this.breakCloseTime,
    this.breakOpenTime,
    @required this.closeTime,
    @required this.openTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'break_close_time': breakCloseTime,
      'break_open_time': breakOpenTime,
      'close_time': closeTime,
      'open_time': openTime,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory GroupsAddressTimetableDay.fromMap(Map<String, dynamic> map) {
    return GroupsAddressTimetableDay(
      breakCloseTime: map['break_close_time'] as int,
      breakOpenTime: map['break_open_time'] as int,
      closeTime: map['close_time'] as int,
      openTime: map['open_time'] as int,
    );
  }
}

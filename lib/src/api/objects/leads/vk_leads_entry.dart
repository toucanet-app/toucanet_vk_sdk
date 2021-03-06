import '../base/vk_base_bool_int.dart';

class VKLeadsEntry {
  /// Application ID.
  final int aid;

  /// Comment text.
  final String comment;

  /// Date when the action has been started in Unixtime.
  final int date;

  /// Session string ID.
  final String sid;

  /// Start date in Unixtime (for status=2).
  final int startDate;

  /// Action type.
  final int status;

  /// Information whether test mode is enabled.
  final VKBaseBoolInt testMode;

  /// User ID.
  final int uid;

  const VKLeadsEntry({
    this.aid,
    this.comment,
    this.date,
    this.sid,
    this.startDate,
    this.status,
    this.testMode,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aid': aid,
      'comment': comment,
      'date': date,
      'sid': sid,
      'start_date': startDate,
      'status': status,
      'test_mode': testMode?.value,
      'uid': uid,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKLeadsEntry.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKLeadsEntry(
      aid: map['aid'] as int,
      comment: map['comment'] as String,
      date: map['date'] as int,
      sid: map['sid'] as String,
      startDate: map['start_date'] as int,
      status: map['status'] as int,
      testMode: VKBaseBoolInt(map['test_mode']),
      uid: map['uid'] as int,
    );
  }
}

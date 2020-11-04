import 'groups_ban_info_reason.dart';

class GroupsGroupBanInfo {
  /// Ban comment.
  final String comment;

  /// End date of ban in Unixtime.
  final int endDate;

  final GroupsBanInfoReason reason;

  const GroupsGroupBanInfo({
    this.comment,
    this.endDate,
    this.reason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': comment,
      'end_date': endDate,
      'reason': reason?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory GroupsGroupBanInfo.fromMap(Map<String, dynamic> map) {
    return GroupsGroupBanInfo(
      comment: map['comment'] as String,
      endDate: map['end_date'] as int,
      reason: GroupsBanInfoReason(map['reason']),
    );
  }
}

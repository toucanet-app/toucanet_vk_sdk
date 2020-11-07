import 'vk_groups_ban_info_reason.dart';

class VKGroupsBanInfo {
  /// Administrator ID.
  final int adminId;

  /// Comment for a ban.
  final String comment;

  /// Show comment for user.
  final bool commentVisible;

  final bool isClosed;

  /// Date when user has been added to blacklist in Unixtime.
  final int date;

  /// Date when user will be removed from blacklist in Unixtime.
  final int endDate;

  final VKGroupsBanInfoReason reason;

  const VKGroupsBanInfo({
    this.adminId,
    this.comment,
    this.commentVisible,
    this.isClosed,
    this.date,
    this.endDate,
    this.reason,
  })  : assert(adminId == null || adminId >= 1),
        assert(date == null || date >= 0),
        assert(endDate == null || endDate >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'admin_id': adminId,
      'comment': comment,
      'comment_visible': commentVisible,
      'is_closed': isClosed,
      'date': date,
      'end_date': endDate,
      'reason': reason?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKGroupsBanInfo.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKGroupsBanInfo(
      adminId: map['admin_id'] as int,
      comment: map['comment'] as String,
      commentVisible: map['comment_visible'] as bool,
      isClosed: map['is_closed'] as bool,
      date: map['date'] as int,
      endDate: map['end_date'] as int,
      reason: VKGroupsBanInfoReason(map['reason']),
    );
  }
}

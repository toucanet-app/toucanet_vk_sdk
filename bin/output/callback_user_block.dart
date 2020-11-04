import 'package:meta/meta.dart';

class CallbackUserBlock {
  final int adminId;

  final int userId;

  final int unblockDate;

  final int reason;

  final String comment;

  const CallbackUserBlock({
    @required this.adminId,
    @required this.userId,
    @required this.unblockDate,
    @required this.reason,
    this.comment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'admin_id': adminId,
      'user_id': userId,
      'unblock_date': unblockDate,
      'reason': reason,
      'comment': comment,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory CallbackUserBlock.fromMap(Map<String, dynamic> map) {
    return CallbackUserBlock(
      adminId: map['admin_id'] as int,
      userId: map['user_id'] as int,
      unblockDate: map['unblock_date'] as int,
      reason: map['reason'] as int,
      comment: map['comment'] as String,
    );
  }
}

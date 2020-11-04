import 'package:meta/meta.dart';

class CallbackUserUnblock {
  final int adminId;

  final int userId;

  final int byEndDate;

  const CallbackUserUnblock({
    @required this.adminId,
    @required this.userId,
    @required this.byEndDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'admin_id': adminId,
      'user_id': userId,
      'by_end_date': byEndDate,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory CallbackUserUnblock.fromMap(Map<String, dynamic> map) {
    return CallbackUserUnblock(
      adminId: map['admin_id'] as int,
      userId: map['user_id'] as int,
      byEndDate: map['by_end_date'] as int,
    );
  }
}

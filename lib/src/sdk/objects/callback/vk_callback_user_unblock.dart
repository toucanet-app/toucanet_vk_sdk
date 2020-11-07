import 'package:meta/meta.dart';

class VKCallbackUserUnblock {
  final int adminId;

  final int userId;

  final int byEndDate;

  const VKCallbackUserUnblock({
    @required this.adminId,
    @required this.userId,
    @required this.byEndDate,
  })  : assert(adminId >= 0),
        assert(userId >= 0),
        assert(byEndDate >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'admin_id': adminId,
      'user_id': userId,
      'by_end_date': byEndDate,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKCallbackUserUnblock.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKCallbackUserUnblock(
      adminId: map['admin_id'] as int,
      userId: map['user_id'] as int,
      byEndDate: map['by_end_date'] as int,
    );
  }
}

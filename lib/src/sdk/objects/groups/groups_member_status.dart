import 'package:meta/meta.dart';

import '../base/base_bool_int.dart';

class VKGroupsMemberStatus {
  /// Information whether user is a member of the group.
  final VKBaseBoolInt member;

  /// User ID.
  final int userId;

  const VKGroupsMemberStatus({
    @required this.member,
    @required this.userId,
  }) : assert(userId >= 1);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'member': member?.value,
      'user_id': userId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKGroupsMemberStatus.fromMap(Map<String, dynamic> map) {
    return VKGroupsMemberStatus(
      member: VKBaseBoolInt(map['member']),
      userId: map['user_id'] as int,
    );
  }
}

import 'base_bool_int.dart';
import 'package:meta/meta.dart';

class GroupsMemberStatus {
  /// Information whether user is a member of the group.
  final BaseBoolInt member;

  /// User ID.
  final int userId;

  const GroupsMemberStatus({
    @required this.member,
    @required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'member': member?.value,
      'user_id': userId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory GroupsMemberStatus.fromMap(Map<String, dynamic> map) {
    return GroupsMemberStatus(
      member: BaseBoolInt(map['member']),
      userId: map['user_id'] as int,
    );
  }
}

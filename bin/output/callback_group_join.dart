import 'callback_group_join_type.dart';
import 'package:meta/meta.dart';

class CallbackGroupJoin {
  final int userId;

  final CallbackGroupJoinType joinType;

  const CallbackGroupJoin({
    @required this.userId,
    @required this.joinType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'user_id': userId,
      'join_type': joinType?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory CallbackGroupJoin.fromMap(Map<String, dynamic> map) {
    return CallbackGroupJoin(
      userId: map['user_id'] as int,
      joinType: CallbackGroupJoinType(map['join_type']),
    );
  }
}

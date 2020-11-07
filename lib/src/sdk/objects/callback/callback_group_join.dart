import 'package:meta/meta.dart';

import 'callback_group_join_type.dart';

class VKCallbackGroupJoin {
  final int userId;

  final VKCallbackGroupJoinType joinType;

  const VKCallbackGroupJoin({
    @required this.userId,
    @required this.joinType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'user_id': userId,
      'join_type': joinType?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKCallbackGroupJoin.fromMap(Map<String, dynamic> map) {
    return VKCallbackGroupJoin(
      userId: map['user_id'] as int,
      joinType: VKCallbackGroupJoinType(map['join_type']),
    );
  }
}

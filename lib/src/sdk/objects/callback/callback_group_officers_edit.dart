import 'package:meta/meta.dart';

import 'callback_group_officer_role.dart';

class VKCallbackGroupOfficersEdit {
  final int adminId;

  final int userId;

  final VKCallbackGroupOfficerRole levelOld;

  final VKCallbackGroupOfficerRole levelNew;

  const VKCallbackGroupOfficersEdit({
    @required this.adminId,
    @required this.userId,
    @required this.levelOld,
    @required this.levelNew,
  })  : assert(adminId >= 0),
        assert(userId >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'admin_id': adminId,
      'user_id': userId,
      'level_old': levelOld?.value,
      'level_new': levelNew?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKCallbackGroupOfficersEdit.fromMap(Map<String, dynamic> map) {
    return VKCallbackGroupOfficersEdit(
      adminId: map['admin_id'] as int,
      userId: map['user_id'] as int,
      levelOld: VKCallbackGroupOfficerRole(map['level_old']),
      levelNew: VKCallbackGroupOfficerRole(map['level_new']),
    );
  }
}

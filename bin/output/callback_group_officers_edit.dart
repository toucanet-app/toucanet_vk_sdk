import 'callback_group_officer_role.dart';
import 'package:meta/meta.dart';

class CallbackGroupOfficersEdit {
  final int adminId;

  final int userId;

  final CallbackGroupOfficerRole levelOld;

  final CallbackGroupOfficerRole levelNew;

  const CallbackGroupOfficersEdit({
    @required this.adminId,
    @required this.userId,
    @required this.levelOld,
    @required this.levelNew,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'admin_id': adminId,
      'user_id': userId,
      'level_old': levelOld?.value,
      'level_new': levelNew?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory CallbackGroupOfficersEdit.fromMap(Map<String, dynamic> map) {
    return CallbackGroupOfficersEdit(
      adminId: map['admin_id'] as int,
      userId: map['user_id'] as int,
      levelOld: CallbackGroupOfficerRole(map['level_old']),
      levelNew: CallbackGroupOfficerRole(map['level_new']),
    );
  }
}

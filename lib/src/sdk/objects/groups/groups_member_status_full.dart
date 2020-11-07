import 'package:meta/meta.dart';

import '../base/base_bool_int.dart';

class VKGroupsMemberStatusFull {
  /// Information whether user can be invited.
  final VKBaseBoolInt canInvite;

  /// Information whether user's invite to the group can be recalled.
  final VKBaseBoolInt canRecall;

  /// Information whether user has been invited to the group.
  final VKBaseBoolInt invitation;

  /// Information whether user is a member of the group.
  final VKBaseBoolInt member;

  /// Information whether user has send request to the group.
  final VKBaseBoolInt request;

  /// User ID.
  final int userId;

  const VKGroupsMemberStatusFull({
    this.canInvite,
    this.canRecall,
    this.invitation,
    @required this.member,
    this.request,
    @required this.userId,
  }) : assert(userId >= 1);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'can_invite': canInvite?.value,
      'can_recall': canRecall?.value,
      'invitation': invitation?.value,
      'member': member?.value,
      'request': request?.value,
      'user_id': userId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKGroupsMemberStatusFull.fromMap(Map<String, dynamic> map) {
    return VKGroupsMemberStatusFull(
      canInvite: VKBaseBoolInt(map['can_invite']),
      canRecall: VKBaseBoolInt(map['can_recall']),
      invitation: VKBaseBoolInt(map['invitation']),
      member: VKBaseBoolInt(map['member']),
      request: VKBaseBoolInt(map['request']),
      userId: map['user_id'] as int,
    );
  }
}

import 'base_bool_int.dart';
import 'package:meta/meta.dart';

class GroupsMemberStatusFull {
  /// Information whether user can be invited.
  final BaseBoolInt canInvite;

  /// Information whether user's invite to the group can be recalled.
  final BaseBoolInt canRecall;

  /// Information whether user has been invited to the group.
  final BaseBoolInt invitation;

  /// Information whether user is a member of the group.
  final BaseBoolInt member;

  /// Information whether user has send request to the group.
  final BaseBoolInt request;

  /// User ID.
  final int userId;

  const GroupsMemberStatusFull({
    this.canInvite,
    this.canRecall,
    this.invitation,
    @required this.member,
    this.request,
    @required this.userId,
  });

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

  factory GroupsMemberStatusFull.fromMap(Map<String, dynamic> map) {
    return GroupsMemberStatusFull(
      canInvite: BaseBoolInt(map['can_invite']),
      canRecall: BaseBoolInt(map['can_recall']),
      invitation: BaseBoolInt(map['invitation']),
      member: BaseBoolInt(map['member']),
      request: BaseBoolInt(map['request']),
      userId: map['user_id'] as int,
    );
  }
}

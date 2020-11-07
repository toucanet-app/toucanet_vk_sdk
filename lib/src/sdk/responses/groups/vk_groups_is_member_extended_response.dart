import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKGroupsIsMemberExtendedResponse {
  /// Information whether user is a member of the group.
  final VKBaseBoolInt member;

  /// Information whether user has been invited to the group.
  final VKBaseBoolInt invitation;

  /// Information whether user can be invited.
  final VKBaseBoolInt canInvite;

  /// Information whether user's invite to the group can be recalled.
  final VKBaseBoolInt canRecall;

  /// Information whether user has sent request to the group.
  final VKBaseBoolInt request;

  const VKGroupsIsMemberExtendedResponse({
    @required this.member,
    this.invitation,
    this.canInvite,
    this.canRecall,
    this.request,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'member': member?.value,
      'invitation': invitation?.value,
      'can_invite': canInvite?.value,
      'can_recall': canRecall?.value,
      'request': request?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKGroupsIsMemberExtendedResponse.fromMap(Map<String, dynamic> map) {
    return VKGroupsIsMemberExtendedResponse(
      member: VKBaseBoolInt(map['member']),
      invitation: VKBaseBoolInt(map['invitation']),
      canInvite: VKBaseBoolInt(map['can_invite']),
      canRecall: VKBaseBoolInt(map['can_recall']),
      request: VKBaseBoolInt(map['request']),
    );
  }
}

import 'package:meta/meta.dart';

class VKMessagesConversationMember {
  /// Is it possible for user to kick this member.
  final bool canKick;

  final int invitedBy;

  final bool isAdmin;

  final bool isOwner;

  final bool isMessageRequest;

  final int joinDate;

  /// Message request date.
  final int requestDate;

  final int memberId;

  const VKMessagesConversationMember({
    this.canKick,
    this.invitedBy,
    this.isAdmin,
    this.isOwner,
    this.isMessageRequest,
    this.joinDate,
    this.requestDate,
    @required this.memberId,
  })  : assert(joinDate >= 0),
        assert(requestDate >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'can_kick': canKick,
      'invited_by': invitedBy,
      'is_admin': isAdmin,
      'is_owner': isOwner,
      'is_message_request': isMessageRequest,
      'join_date': joinDate,
      'request_date': requestDate,
      'member_id': memberId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMessagesConversationMember.fromMap(Map<String, dynamic> map) {
    return VKMessagesConversationMember(
      canKick: map['can_kick'] as bool,
      invitedBy: map['invited_by'] as int,
      isAdmin: map['is_admin'] as bool,
      isOwner: map['is_owner'] as bool,
      isMessageRequest: map['is_message_request'] as bool,
      joinDate: map['join_date'] as int,
      requestDate: map['request_date'] as int,
      memberId: map['member_id'] as int,
    );
  }
}

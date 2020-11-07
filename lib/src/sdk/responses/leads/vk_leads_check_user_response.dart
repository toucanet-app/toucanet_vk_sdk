import '../../objects/vk_objects.dart';

class VKLeadsCheckUserResponse {
  /// Reason why user can't start the lead.
  final String reason;

  final VKLeadsCheckedResult result;

  /// Session ID.
  final String sid;

  /// URL user should open to start the lead.
  final String startLink;

  const VKLeadsCheckUserResponse({
    this.reason,
    this.result,
    this.sid,
    this.startLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reason': reason,
      'result': result?.value,
      'sid': sid,
      'start_link': startLink,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKLeadsCheckUserResponse.fromMap(Map<String, dynamic> map) {
    return VKLeadsCheckUserResponse(
      reason: map['reason'] as String,
      result: VKLeadsCheckedResult(map['result']),
      sid: map['sid'] as String,
      startLink: map['start_link'] as String,
    );
  }
}

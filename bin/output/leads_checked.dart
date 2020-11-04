import 'leads_checked_result.dart';

class LeadsChecked {
  /// Reason why user can't start the lead.
  final String reason;

  final LeadsCheckedResult result;

  /// Session ID.
  final String sid;

  /// URL user should open to start the lead.
  final String startLink;

  const LeadsChecked({
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

  factory LeadsChecked.fromMap(Map<String, dynamic> map) {
    return LeadsChecked(
      reason: map['reason'] as String,
      result: LeadsCheckedResult(map['result']),
      sid: map['sid'] as String,
      startLink: map['start_link'] as String,
    );
  }
}

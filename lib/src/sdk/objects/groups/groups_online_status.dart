import 'package:meta/meta.dart';

import 'groups_online_status_type.dart';

class VKGroupsOnlineStatus {
  /// Estimated time of answer (for status = answer_mark).
  final int minutes;

  final VKGroupsOnlineStatusType status;

  const VKGroupsOnlineStatus({
    this.minutes,
    @required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minutes': minutes,
      'status': status?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKGroupsOnlineStatus.fromMap(Map<String, dynamic> map) {
    return VKGroupsOnlineStatus(
      minutes: map['minutes'] as int,
      status: VKGroupsOnlineStatusType(map['status']),
    );
  }
}

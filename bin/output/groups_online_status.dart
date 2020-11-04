import 'groups_online_status_type.dart';
import 'package:meta/meta.dart';

class GroupsOnlineStatus {
  /// Estimated time of answer (for status = answer_mark).
  final int minutes;

  final GroupsOnlineStatusType status;

  const GroupsOnlineStatus({
    this.minutes,
    @required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minutes': minutes,
      'status': status?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory GroupsOnlineStatus.fromMap(Map<String, dynamic> map) {
    return GroupsOnlineStatus(
      minutes: map['minutes'] as int,
      status: GroupsOnlineStatusType(map['status']),
    );
  }
}

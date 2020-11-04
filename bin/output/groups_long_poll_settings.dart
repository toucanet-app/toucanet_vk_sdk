import 'groups_long_poll_events.dart';
import 'package:meta/meta.dart';

class GroupsLongPollSettings {
  /// API version used for the events.
  final String apiVersion;

  final GroupsLongPollEvents events;

  /// Shows whether Long Poll is enabled.
  final bool isEnabled;

  const GroupsLongPollSettings({
    this.apiVersion,
    @required this.events,
    @required this.isEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'api_version': apiVersion,
      'events': events?.toMap(),
      'is_enabled': isEnabled,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory GroupsLongPollSettings.fromMap(Map<String, dynamic> map) {
    return GroupsLongPollSettings(
      apiVersion: map['api_version'] as String,
      events: GroupsLongPollEvents.fromMap(map['events']),
      isEnabled: map['is_enabled'] as bool,
    );
  }
}

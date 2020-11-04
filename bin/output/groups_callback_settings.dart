import 'groups_long_poll_events.dart';

class GroupsCallbackSettings {
  /// API version used for the events.
  final String apiVersion;

  final GroupsLongPollEvents events;

  const GroupsCallbackSettings({
    this.apiVersion,
    this.events,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'api_version': apiVersion,
      'events': events?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory GroupsCallbackSettings.fromMap(Map<String, dynamic> map) {
    return GroupsCallbackSettings(
      apiVersion: map['api_version'] as String,
      events: GroupsLongPollEvents.fromMap(map['events']),
    );
  }
}

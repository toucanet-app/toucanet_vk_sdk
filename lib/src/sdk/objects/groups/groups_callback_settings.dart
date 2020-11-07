import 'groups_long_poll_events.dart';

class VKGroupsCallbackSettings {
  /// API version used for the events.
  final String apiVersion;

  final VKGroupsLongPollEvents events;

  const VKGroupsCallbackSettings({
    this.apiVersion,
    this.events,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'api_version': apiVersion,
      'events': events?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKGroupsCallbackSettings.fromMap(Map<String, dynamic> map) {
    return VKGroupsCallbackSettings(
      apiVersion: map['api_version'] as String,
      events: VKGroupsLongPollEvents.fromMap(map['events']),
    );
  }
}

import '../../objects/vk_objects.dart';

class VKGroupsGetCallbackSettingsResponse {
  /// API version used for the events.
  final String apiVersion;

  final VKGroupsLongPollEvents events;

  const VKGroupsGetCallbackSettingsResponse({
    this.apiVersion,
    this.events,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'api_version': apiVersion,
      'events': events?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKGroupsGetCallbackSettingsResponse.fromMap(
      Map<String, dynamic> map) {
    if (map == null) return null;

    return VKGroupsGetCallbackSettingsResponse(
      apiVersion: map['api_version'] as String,
      events: VKGroupsLongPollEvents.fromMap(map['events']),
    );
  }
}

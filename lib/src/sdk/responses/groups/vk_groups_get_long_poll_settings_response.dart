import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKGroupsGetLongPollSettingsResponse {
  /// API version used for the events.
  final String apiVersion;

  final VKGroupsLongPollEvents events;

  /// Shows whether Long Poll is enabled.
  final bool isEnabled;

  const VKGroupsGetLongPollSettingsResponse({
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

  factory VKGroupsGetLongPollSettingsResponse.fromMap(
      Map<String, dynamic> map) {
    return VKGroupsGetLongPollSettingsResponse(
      apiVersion: map['api_version'] as String,
      events: VKGroupsLongPollEvents.fromMap(map['events']),
      isEnabled: map['is_enabled'] as bool,
    );
  }
}

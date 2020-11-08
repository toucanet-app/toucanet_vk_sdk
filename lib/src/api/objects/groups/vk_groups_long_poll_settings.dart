import 'package:meta/meta.dart';

import 'vk_groups_long_poll_events.dart';

class VKGroupsLongPollSettings {
  /// API version used for the events.
  final String apiVersion;

  final VKGroupsLongPollEvents events;

  /// Shows whether Long Poll is enabled.
  final bool isEnabled;

  const VKGroupsLongPollSettings({
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

  factory VKGroupsLongPollSettings.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKGroupsLongPollSettings(
      apiVersion: map['api_version'] as String,
      events: VKGroupsLongPollEvents.fromMap(map['events']),
      isEnabled: map['is_enabled'] as bool,
    );
  }
}

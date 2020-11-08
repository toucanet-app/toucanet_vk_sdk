import '../../objects/vk_objects.dart';

class VKAccountGetPushSettingsResponse {
  /// Information whether notifications are disabled.
  final VKBaseBoolInt disabled;

  /// Time until that notifications are disabled in Unixtime.
  final int disabledUntil;

  final VKAccountPushParams settings;

  final VKAccountPushConversations conversations;

  const VKAccountGetPushSettingsResponse({
    this.disabled,
    this.disabledUntil,
    this.settings,
    this.conversations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': disabled?.value,
      'disabled_until': disabledUntil,
      'settings': settings?.toMap(),
      'conversations': conversations?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAccountGetPushSettingsResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAccountGetPushSettingsResponse(
      disabled: VKBaseBoolInt(map['disabled']),
      disabledUntil: map['disabled_until'] as int,
      settings: VKAccountPushParams.fromMap(map['settings']),
      conversations: VKAccountPushConversations.fromMap(map['conversations']),
    );
  }
}

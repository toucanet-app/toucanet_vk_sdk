import '../base/vk_base_bool_int.dart';
import 'vk_account_push_conversations.dart';
import 'vk_account_push_params.dart';

class VKAccountPushSettings {
  /// Information whether notifications are disabled.
  final VKBaseBoolInt disabled;

  /// Time until that notifications are disabled in Unixtime.
  final int disabledUntil;

  final VKAccountPushParams settings;

  final VKAccountPushConversations conversations;

  const VKAccountPushSettings({
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

  factory VKAccountPushSettings.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAccountPushSettings(
      disabled: VKBaseBoolInt(map['disabled']),
      disabledUntil: map['disabled_until'] as int,
      settings: VKAccountPushParams.fromMap(map['settings']),
      conversations: VKAccountPushConversations.fromMap(map['conversations']),
    );
  }
}

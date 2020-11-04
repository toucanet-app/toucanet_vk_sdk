import 'base_bool_int.dart';
import 'account_push_params.dart';
import 'account_push_conversations.dart';

class AccountPushSettings {
  /// Information whether notifications are disabled.
  final BaseBoolInt disabled;

  /// Time until that notifications are disabled in Unixtime.
  final int disabledUntil;

  final AccountPushParams settings;

  final AccountPushConversations conversations;

  const AccountPushSettings({
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

  factory AccountPushSettings.fromMap(Map<String, dynamic> map) {
    return AccountPushSettings(
      disabled: BaseBoolInt(map['disabled']),
      disabledUntil: map['disabled_until'] as int,
      settings: AccountPushParams.fromMap(map['settings']),
      conversations: AccountPushConversations.fromMap(map['conversations']),
    );
  }
}

import 'base_bool_int.dart';

class MessagesChatPushSettings {
  /// Time until that notifications are disabled.
  final int disabledUntil;

  /// Information whether the sound is on.
  final BaseBoolInt sound;

  const MessagesChatPushSettings({
    this.disabledUntil,
    this.sound,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled_until': disabledUntil,
      'sound': sound?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory MessagesChatPushSettings.fromMap(Map<String, dynamic> map) {
    return MessagesChatPushSettings(
      disabledUntil: map['disabled_until'] as int,
      sound: BaseBoolInt(map['sound']),
    );
  }
}

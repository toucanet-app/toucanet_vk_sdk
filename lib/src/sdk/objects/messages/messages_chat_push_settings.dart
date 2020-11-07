import '../base/base_bool_int.dart';

class VKMessagesChatPushSettings {
  /// Time until that notifications are disabled.
  final int disabledUntil;

  /// Information whether the sound is on.
  final VKBaseBoolInt sound;

  const VKMessagesChatPushSettings({
    this.disabledUntil,
    this.sound,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled_until': disabledUntil,
      'sound': sound?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMessagesChatPushSettings.fromMap(Map<String, dynamic> map) {
    return VKMessagesChatPushSettings(
      disabledUntil: map['disabled_until'] as int,
      sound: VKBaseBoolInt(map['sound']),
    );
  }
}

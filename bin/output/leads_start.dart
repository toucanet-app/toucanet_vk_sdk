import 'base_bool_int.dart';

class LeadsStart {
  /// Information whether test mode is enabled.
  final BaseBoolInt testMode;

  /// Session data.
  final String vkSid;

  const LeadsStart({
    this.testMode,
    this.vkSid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'test_mode': testMode?.value,
      'vk_sid': vkSid,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory LeadsStart.fromMap(Map<String, dynamic> map) {
    return LeadsStart(
      testMode: BaseBoolInt(map['test_mode']),
      vkSid: map['vk_sid'] as String,
    );
  }
}

import '../base/base_bool_int.dart';

class VKLeadsStart {
  /// Information whether test mode is enabled.
  final VKBaseBoolInt testMode;

  /// Session data.
  final String vkSid;

  const VKLeadsStart({
    this.testMode,
    this.vkSid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'test_mode': testMode?.value,
      'vk_sid': vkSid,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKLeadsStart.fromMap(Map<String, dynamic> map) {
    return VKLeadsStart(
      testMode: VKBaseBoolInt(map['test_mode']),
      vkSid: map['vk_sid'] as String,
    );
  }
}

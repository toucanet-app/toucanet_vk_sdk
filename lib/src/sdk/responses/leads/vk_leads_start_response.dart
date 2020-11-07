import '../../objects/vk_objects.dart';

class VKLeadsStartResponse {
  /// Information whether test mode is enabled.
  final VKBaseBoolInt testMode;

  /// Session data.
  final String vkSid;

  const VKLeadsStartResponse({
    this.testMode,
    this.vkSid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'test_mode': testMode?.value,
      'vk_sid': vkSid,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKLeadsStartResponse.fromMap(Map<String, dynamic> map) {
    return VKLeadsStartResponse(
      testMode: VKBaseBoolInt(map['test_mode']),
      vkSid: map['vk_sid'] as String,
    );
  }
}

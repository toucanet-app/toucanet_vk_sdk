import '../../objects/vk_objects.dart';

class VKAccountSaveProfileInfoResponse {
  /// 1 if changes has been processed.
  final VKBaseBoolInt changed;

  final VKAccountNameRequest nameRequest;

  const VKAccountSaveProfileInfoResponse({
    this.changed,
    this.nameRequest,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'changed': changed?.value,
      'name_request': nameRequest?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAccountSaveProfileInfoResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAccountSaveProfileInfoResponse(
      changed: VKBaseBoolInt(map['changed']),
      nameRequest: VKAccountNameRequest.fromMap(map['name_request']),
    );
  }
}

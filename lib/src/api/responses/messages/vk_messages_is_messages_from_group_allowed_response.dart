import '../../objects/vk_objects.dart';

class VKMessagesIsMessagesFromGroupAllowedResponse {
  final VKBaseBoolInt isAllowed;

  const VKMessagesIsMessagesFromGroupAllowedResponse({
    this.isAllowed,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'is_allowed': isAllowed?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMessagesIsMessagesFromGroupAllowedResponse.fromMap(
      Map<String, dynamic> map) {
    if (map == null) return null;

    return VKMessagesIsMessagesFromGroupAllowedResponse(
      isAllowed: VKBaseBoolInt(map['is_allowed']),
    );
  }
}

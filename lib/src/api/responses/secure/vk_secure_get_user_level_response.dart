import '../../objects/vk_objects.dart';

class VKSecureGetUserLevelResponse {
  final List<VKSecureLevel> secureGetUserLevelResponse;

  const VKSecureGetUserLevelResponse({
    this.secureGetUserLevelResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secure_getUserLevel_response': secureGetUserLevelResponse
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKSecureGetUserLevelResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKSecureGetUserLevelResponse(
      secureGetUserLevelResponse: map['secure_getUserLevel_response']
          ?.map<List<VKSecureLevel>>(
            (item) => VKSecureLevel.fromMap(item),
          )
          ?.toList(),
    );
  }
}

import '../../objects/vk_objects.dart';

class VKSecureGetUserLevelResponse {
  final List<VKSecureLevel> secureGetUserLevelResponse;

  const VKSecureGetUserLevelResponse({
    this.secureGetUserLevelResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secure_getUserLevel_response':
          secureGetUserLevelResponse?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKSecureGetUserLevelResponse.fromMap(Map<String, dynamic> map) {
    return VKSecureGetUserLevelResponse(
      secureGetUserLevelResponse: map['secure_getUserLevel_response']
          ?.map((item) => VKSecureLevel.fromMap(item)),
    );
  }
}

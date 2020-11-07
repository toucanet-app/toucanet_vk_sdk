import '../../objects/vk_objects.dart';

class VKWallGetByIdLegacyResponse {
  final List<VKWallWallpostFull> wallGetByIdLegacyResponse;

  const VKWallGetByIdLegacyResponse({
    this.wallGetByIdLegacyResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'wall_getById_legacy_response': wallGetByIdLegacyResponse
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKWallGetByIdLegacyResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKWallGetByIdLegacyResponse(
      wallGetByIdLegacyResponse: map['wall_getById_legacy_response']
          ?.map<List<VKWallWallpostFull>>(
            (item) => VKWallWallpostFull.fromMap(item),
          )
          ?.toList(),
    );
  }
}

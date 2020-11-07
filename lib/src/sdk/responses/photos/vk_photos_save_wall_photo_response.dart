import '../../objects/vk_objects.dart';

class VKPhotosSaveWallPhotoResponse {
  final List<VKPhotosPhoto> photosSaveWallPhotoResponse;

  const VKPhotosSaveWallPhotoResponse({
    this.photosSaveWallPhotoResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'photos_saveWallPhoto_response': photosSaveWallPhotoResponse
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPhotosSaveWallPhotoResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKPhotosSaveWallPhotoResponse(
      photosSaveWallPhotoResponse: map['photos_saveWallPhoto_response']
          ?.map<List<VKPhotosPhoto>>(
            (item) => VKPhotosPhoto.fromMap(item),
          )
          ?.toList(),
    );
  }
}

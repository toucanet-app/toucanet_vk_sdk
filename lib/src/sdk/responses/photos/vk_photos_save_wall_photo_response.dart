import '../../objects/vk_objects.dart';

class VKPhotosSaveWallPhotoResponse {
  final List<VKPhotosPhoto> photosSaveWallPhotoResponse;

  const VKPhotosSaveWallPhotoResponse({
    this.photosSaveWallPhotoResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'photos_saveWallPhoto_response':
          photosSaveWallPhotoResponse?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPhotosSaveWallPhotoResponse.fromMap(Map<String, dynamic> map) {
    return VKPhotosSaveWallPhotoResponse(
      photosSaveWallPhotoResponse: map['photos_saveWallPhoto_response']
          ?.map((item) => VKPhotosPhoto.fromMap(item)),
    );
  }
}

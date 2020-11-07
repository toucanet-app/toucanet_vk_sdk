import '../../objects/vk_objects.dart';

class VKPhotosSaveOwnerCoverPhotoResponse {
  final List<VKBaseImage> photosSaveOwnerCoverPhotoResponse;

  const VKPhotosSaveOwnerCoverPhotoResponse({
    this.photosSaveOwnerCoverPhotoResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'photos_saveOwnerCoverPhoto_response':
          photosSaveOwnerCoverPhotoResponse?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPhotosSaveOwnerCoverPhotoResponse.fromMap(
      Map<String, dynamic> map) {
    return VKPhotosSaveOwnerCoverPhotoResponse(
      photosSaveOwnerCoverPhotoResponse:
          map['photos_saveOwnerCoverPhoto_response']
              ?.map((item) => VKBaseImage.fromMap(item)),
    );
  }
}

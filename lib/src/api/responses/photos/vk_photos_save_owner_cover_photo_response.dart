import '../../objects/vk_objects.dart';

class VKPhotosSaveOwnerCoverPhotoResponse {
  final List<VKBaseImage> photosSaveOwnerCoverPhotoResponse;

  const VKPhotosSaveOwnerCoverPhotoResponse({
    this.photosSaveOwnerCoverPhotoResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'photos_saveOwnerCoverPhoto_response': photosSaveOwnerCoverPhotoResponse
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPhotosSaveOwnerCoverPhotoResponse.fromMap(
      Map<String, dynamic> map) {
    if (map == null) return null;

    return VKPhotosSaveOwnerCoverPhotoResponse(
      photosSaveOwnerCoverPhotoResponse:
          map['photos_saveOwnerCoverPhoto_response']
              ?.map<List<VKBaseImage>>(
                (item) => VKBaseImage.fromMap(item),
              )
              ?.toList(),
    );
  }
}

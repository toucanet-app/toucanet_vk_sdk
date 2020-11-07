import '../../objects/vk_objects.dart';

class VKPhotosGetTagsResponse {
  final List<VKPhotosPhotoTag> photosGetTagsResponse;

  const VKPhotosGetTagsResponse({
    this.photosGetTagsResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'photos_getTags_response':
          photosGetTagsResponse?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPhotosGetTagsResponse.fromMap(Map<String, dynamic> map) {
    return VKPhotosGetTagsResponse(
      photosGetTagsResponse: map['photos_getTags_response']
          ?.map((item) => VKPhotosPhotoTag.fromMap(item)),
    );
  }
}

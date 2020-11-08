import '../../objects/vk_objects.dart';

class VKPhotosGetTagsResponse {
  final List<VKPhotosPhotoTag> photosGetTagsResponse;

  const VKPhotosGetTagsResponse({
    this.photosGetTagsResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'photos_getTags_response': photosGetTagsResponse
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPhotosGetTagsResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKPhotosGetTagsResponse(
      photosGetTagsResponse: map['photos_getTags_response']
          ?.map<List<VKPhotosPhotoTag>>(
            (item) => VKPhotosPhotoTag.fromMap(item),
          )
          ?.toList(),
    );
  }
}

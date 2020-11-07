import '../../objects/vk_objects.dart';

class VKPhotosSaveResponse {
  final List<VKPhotosPhoto> photosSaveResponse;

  const VKPhotosSaveResponse({
    this.photosSaveResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'photos_save_response': photosSaveResponse?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPhotosSaveResponse.fromMap(Map<String, dynamic> map) {
    return VKPhotosSaveResponse(
      photosSaveResponse: map['photos_save_response']
          ?.map((item) => VKPhotosPhoto.fromMap(item)),
    );
  }
}
import '../../objects/vk_objects.dart';

class VKPhotosSaveMessagesPhotoResponse {
  final List<VKPhotosPhoto> photosSaveMessagesPhotoResponse;

  const VKPhotosSaveMessagesPhotoResponse({
    this.photosSaveMessagesPhotoResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'photos_saveMessagesPhoto_response':
          photosSaveMessagesPhotoResponse?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPhotosSaveMessagesPhotoResponse.fromMap(Map<String, dynamic> map) {
    return VKPhotosSaveMessagesPhotoResponse(
      photosSaveMessagesPhotoResponse: map['photos_saveMessagesPhoto_response']
          ?.map((item) => VKPhotosPhoto.fromMap(item)),
    );
  }
}

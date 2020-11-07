import '../../objects/vk_objects.dart';

class VKPhotosSaveMarketPhotoResponse {
  final List<VKPhotosPhoto> photosSaveMarketPhotoResponse;

  const VKPhotosSaveMarketPhotoResponse({
    this.photosSaveMarketPhotoResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'photos_saveMarketPhoto_response':
          photosSaveMarketPhotoResponse?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPhotosSaveMarketPhotoResponse.fromMap(Map<String, dynamic> map) {
    return VKPhotosSaveMarketPhotoResponse(
      photosSaveMarketPhotoResponse: map['photos_saveMarketPhoto_response']
          ?.map((item) => VKPhotosPhoto.fromMap(item)),
    );
  }
}

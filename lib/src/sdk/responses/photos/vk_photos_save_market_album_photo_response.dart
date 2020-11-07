import '../../objects/vk_objects.dart';

class VKPhotosSaveMarketAlbumPhotoResponse {
  final List<VKPhotosPhoto> photosSaveMarketAlbumPhotoResponse;

  const VKPhotosSaveMarketAlbumPhotoResponse({
    this.photosSaveMarketAlbumPhotoResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'photos_saveMarketAlbumPhoto_response':
          photosSaveMarketAlbumPhotoResponse?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPhotosSaveMarketAlbumPhotoResponse.fromMap(
      Map<String, dynamic> map) {
    return VKPhotosSaveMarketAlbumPhotoResponse(
      photosSaveMarketAlbumPhotoResponse:
          map['photos_saveMarketAlbumPhoto_response']
              ?.map((item) => VKPhotosPhoto.fromMap(item)),
    );
  }
}

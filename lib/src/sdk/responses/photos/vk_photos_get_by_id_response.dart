import '../../objects/vk_objects.dart';

class VKPhotosGetByIdResponse {
  final List<VKPhotosPhoto> photosGetByIdResponse;

  const VKPhotosGetByIdResponse({
    this.photosGetByIdResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'photos_getById_response':
          photosGetByIdResponse?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPhotosGetByIdResponse.fromMap(Map<String, dynamic> map) {
    return VKPhotosGetByIdResponse(
      photosGetByIdResponse: map['photos_getById_response']
          ?.map((item) => VKPhotosPhoto.fromMap(item)),
    );
  }
}

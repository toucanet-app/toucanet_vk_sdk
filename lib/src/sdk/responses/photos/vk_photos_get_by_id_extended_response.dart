import '../../objects/vk_objects.dart';

class VKPhotosGetByIdExtendedResponse {
  final List<VKPhotosPhotoFull> photosGetByIdExtendedResponse;

  const VKPhotosGetByIdExtendedResponse({
    this.photosGetByIdExtendedResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'photos_getById_extended_response':
          photosGetByIdExtendedResponse?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPhotosGetByIdExtendedResponse.fromMap(Map<String, dynamic> map) {
    return VKPhotosGetByIdExtendedResponse(
      photosGetByIdExtendedResponse: map['photos_getById_extended_response']
          ?.map((item) => VKPhotosPhotoFull.fromMap(item)),
    );
  }
}

import '../../objects/vk_objects.dart';

class VKAppWidgetsGetImagesByIdResponse {
  final List<VKAppWidgetsPhoto> appWidgetsGetImagesByIdResponse;

  const VKAppWidgetsGetImagesByIdResponse({
    this.appWidgetsGetImagesByIdResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appWidgets_getImagesById_response':
          appWidgetsGetImagesByIdResponse?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAppWidgetsGetImagesByIdResponse.fromMap(Map<String, dynamic> map) {
    return VKAppWidgetsGetImagesByIdResponse(
      appWidgetsGetImagesByIdResponse: map['appWidgets_getImagesById_response']
          ?.map((item) => VKAppWidgetsPhoto.fromMap(item)),
    );
  }
}

import '../../objects/vk_objects.dart';

class VKAppWidgetsGetImagesByIdResponse {
  final List<VKAppWidgetsPhoto> appWidgetsGetImagesByIdResponse;

  const VKAppWidgetsGetImagesByIdResponse({
    this.appWidgetsGetImagesByIdResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appWidgets_getImagesById_response': appWidgetsGetImagesByIdResponse
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAppWidgetsGetImagesByIdResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAppWidgetsGetImagesByIdResponse(
      appWidgetsGetImagesByIdResponse: map['appWidgets_getImagesById_response']
          ?.map<List<VKAppWidgetsPhoto>>(
            (item) => VKAppWidgetsPhoto.fromMap(item),
          )
          ?.toList(),
    );
  }
}

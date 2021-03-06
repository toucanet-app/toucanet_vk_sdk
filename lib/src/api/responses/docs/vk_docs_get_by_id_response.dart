import '../../objects/vk_objects.dart';

class VKDocsGetByIdResponse {
  final List<VKDocsDoc> docsGetByIdResponse;

  const VKDocsGetByIdResponse({
    this.docsGetByIdResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'docs_getById_response': docsGetByIdResponse
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKDocsGetByIdResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKDocsGetByIdResponse(
      docsGetByIdResponse: map['docs_getById_response']
          ?.map<List<VKDocsDoc>>(
            (item) => VKDocsDoc.fromMap(item),
          )
          ?.toList(),
    );
  }
}

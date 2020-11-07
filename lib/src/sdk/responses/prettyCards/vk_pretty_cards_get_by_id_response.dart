import '../../objects/vk_objects.dart';

class VKPrettyCardsGetByIdResponse {
  final List<VKPrettyCardsPrettyCard> prettyCardsGetByIdResponse;

  const VKPrettyCardsGetByIdResponse({
    this.prettyCardsGetByIdResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prettyCards_getById_response': prettyCardsGetByIdResponse
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPrettyCardsGetByIdResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKPrettyCardsGetByIdResponse(
      prettyCardsGetByIdResponse: map['prettyCards_getById_response']
          ?.map<List<VKPrettyCardsPrettyCard>>(
            (item) => VKPrettyCardsPrettyCard.fromMap(item),
          )
          ?.toList(),
    );
  }
}

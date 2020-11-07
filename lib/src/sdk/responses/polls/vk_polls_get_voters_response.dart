import '../../objects/vk_objects.dart';

class VKPollsGetVotersResponse {
  final List<VKPollsVoters> pollsGetVotersResponse;

  const VKPollsGetVotersResponse({
    this.pollsGetVotersResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'polls_getVoters_response':
          pollsGetVotersResponse?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPollsGetVotersResponse.fromMap(Map<String, dynamic> map) {
    return VKPollsGetVotersResponse(
      pollsGetVotersResponse: map['polls_getVoters_response']
          ?.map((item) => VKPollsVoters.fromMap(item)),
    );
  }
}

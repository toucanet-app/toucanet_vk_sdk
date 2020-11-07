import '../../objects/vk_objects.dart';

class VKLeadsGetUsersResponse {
  final List<VKLeadsEntry> leadsGetUsersResponse;

  const VKLeadsGetUsersResponse({
    this.leadsGetUsersResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'leads_getUsers_response':
          leadsGetUsersResponse?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKLeadsGetUsersResponse.fromMap(Map<String, dynamic> map) {
    return VKLeadsGetUsersResponse(
      leadsGetUsersResponse: map['leads_getUsers_response']
          ?.map((item) => VKLeadsEntry.fromMap(item)),
    );
  }
}
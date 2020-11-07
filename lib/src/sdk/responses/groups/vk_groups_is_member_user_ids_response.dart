import '../../objects/vk_objects.dart';

class VKGroupsIsMemberUserIdsResponse {
  final List<VKGroupsMemberStatus> groupsIsMemberUserIdsResponse;

  const VKGroupsIsMemberUserIdsResponse({
    this.groupsIsMemberUserIdsResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groups_isMember_user_ids_response':
          groupsIsMemberUserIdsResponse?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKGroupsIsMemberUserIdsResponse.fromMap(Map<String, dynamic> map) {
    return VKGroupsIsMemberUserIdsResponse(
      groupsIsMemberUserIdsResponse: map['groups_isMember_user_ids_response']
          ?.map((item) => VKGroupsMemberStatus.fromMap(item)),
    );
  }
}

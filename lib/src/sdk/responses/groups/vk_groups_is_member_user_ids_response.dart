import '../../objects/vk_objects.dart';

class VKGroupsIsMemberUserIdsResponse {
  final List<VKGroupsMemberStatus> groupsIsMemberUserIdsResponse;

  const VKGroupsIsMemberUserIdsResponse({
    this.groupsIsMemberUserIdsResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groups_isMember_user_ids_response': groupsIsMemberUserIdsResponse
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKGroupsIsMemberUserIdsResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKGroupsIsMemberUserIdsResponse(
      groupsIsMemberUserIdsResponse: map['groups_isMember_user_ids_response']
          ?.map<List<VKGroupsMemberStatus>>(
            (item) => VKGroupsMemberStatus.fromMap(item),
          )
          ?.toList(),
    );
  }
}

import '../../objects/vk_objects.dart';

class VKGroupsIsMemberUserIdsExtendedResponse {
  final List<VKGroupsMemberStatusFull> groupsIsMemberUserIdsExtendedResponse;

  const VKGroupsIsMemberUserIdsExtendedResponse({
    this.groupsIsMemberUserIdsExtendedResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groups_isMember_user_ids_extended_response':
          groupsIsMemberUserIdsExtendedResponse
              ?.map((item) => item?.toMap())
              ?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKGroupsIsMemberUserIdsExtendedResponse.fromMap(
      Map<String, dynamic> map) {
    if (map == null) return null;

    return VKGroupsIsMemberUserIdsExtendedResponse(
      groupsIsMemberUserIdsExtendedResponse:
          map['groups_isMember_user_ids_extended_response']
              ?.map((item) => VKGroupsMemberStatusFull.fromMap(item))
              ?.toList(),
    );
  }
}

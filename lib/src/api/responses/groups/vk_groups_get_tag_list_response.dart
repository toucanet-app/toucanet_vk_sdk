import '../../objects/vk_objects.dart';

class VKGroupsGetTagListResponse {
  final List<VKGroupsGroupTag> groupsGetTagListResponse;

  const VKGroupsGetTagListResponse({
    this.groupsGetTagListResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groups_getTagList_response': groupsGetTagListResponse
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKGroupsGetTagListResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKGroupsGetTagListResponse(
      groupsGetTagListResponse: map['groups_getTagList_response']
          ?.map<List<VKGroupsGroupTag>>(
            (item) => VKGroupsGroupTag.fromMap(item),
          )
          ?.toList(),
    );
  }
}

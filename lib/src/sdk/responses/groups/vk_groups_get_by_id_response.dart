import '../../objects/vk_objects.dart';

class VKGroupsGetByIdResponse {
  final List<VKGroupsGroupFull> groupsGetByIdResponse;

  const VKGroupsGetByIdResponse({
    this.groupsGetByIdResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groups_getById_response':
          groupsGetByIdResponse?.map((item) => item?.toMap())?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKGroupsGetByIdResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKGroupsGetByIdResponse(
      groupsGetByIdResponse: map['groups_getById_response']
          ?.map((item) => VKGroupsGroupFull.fromMap(item))
          ?.toList(),
    );
  }
}

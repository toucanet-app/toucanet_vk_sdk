import '../../objects/vk_objects.dart';

class VKNewsfeedGetBannedExtendedResponse {
  final List<VKUsersUserFull> groups;

  final List<VKGroupsGroupFull> profiles;

  const VKNewsfeedGetBannedExtendedResponse({
    this.groups,
    this.profiles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groups': groups?.map((item) => item?.toMap())?.toList(),
      'profiles': profiles?.map((item) => item?.toMap())?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKNewsfeedGetBannedExtendedResponse.fromMap(
      Map<String, dynamic> map) {
    if (map == null) return null;

    return VKNewsfeedGetBannedExtendedResponse(
      groups:
          map['groups']?.map((item) => VKUsersUserFull.fromMap(item))?.toList(),
      profiles: map['profiles']
          ?.map((item) => VKGroupsGroupFull.fromMap(item))
          ?.toList(),
    );
  }
}

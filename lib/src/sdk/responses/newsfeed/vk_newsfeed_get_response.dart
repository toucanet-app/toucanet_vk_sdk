import '../../objects/vk_objects.dart';

class VKNewsfeedGetResponse {
  final List<VKUsersUserFull> profiles;

  final List<VKGroupsGroupFull> groups;

  /// New from value.
  final String nextFrom;

  const VKNewsfeedGetResponse({
    this.profiles,
    this.groups,
    this.nextFrom,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'profiles': profiles?.map((item) => item?.toMap())?.toList(),
      'groups': groups?.map((item) => item?.toMap())?.toList(),
      'next_from': nextFrom,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKNewsfeedGetResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKNewsfeedGetResponse(
      profiles: map['profiles']
          ?.map((item) => VKUsersUserFull.fromMap(item))
          ?.toList(),
      groups: map['groups']
          ?.map((item) => VKGroupsGroupFull.fromMap(item))
          ?.toList(),
      nextFrom: map['next_from'] as String,
    );
  }
}

import '../../objects/vk_objects.dart';

class VKNewsfeedGetRecommendedResponse {
  final List<VKUsersUserFull> profiles;

  final List<VKGroupsGroupFull> groups;

  /// New offset value.
  final String newOffset;

  /// Next from value.
  final String nextFrom;

  const VKNewsfeedGetRecommendedResponse({
    this.profiles,
    this.groups,
    this.newOffset,
    this.nextFrom,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'profiles': profiles?.map((item) => item?.toMap())?.toList(),
      'groups': groups?.map((item) => item?.toMap())?.toList(),
      'new_offset': newOffset,
      'next_from': nextFrom,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKNewsfeedGetRecommendedResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKNewsfeedGetRecommendedResponse(
      profiles: map['profiles']
          ?.map((item) => VKUsersUserFull.fromMap(item))
          ?.toList(),
      groups: map['groups']
          ?.map((item) => VKGroupsGroupFull.fromMap(item))
          ?.toList(),
      newOffset: map['new_offset'] as String,
      nextFrom: map['next_from'] as String,
    );
  }
}

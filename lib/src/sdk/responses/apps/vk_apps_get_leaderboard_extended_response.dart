import '../../objects/vk_objects.dart';

class VKAppsGetLeaderboardExtendedResponse {
  /// Total number.
  final int count;

  final List<VKAppsLeaderboard> items;

  final List<VKUsersUserMin> profiles;

  const VKAppsGetLeaderboardExtendedResponse({
    this.count,
    this.items,
    this.profiles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
      'profiles': profiles
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAppsGetLeaderboardExtendedResponse.fromMap(
      Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAppsGetLeaderboardExtendedResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map<VKAppsLeaderboard>(
            (item) => VKAppsLeaderboard.fromMap(item),
          )
          ?.toList(),
      profiles: map['profiles']
          ?.map<VKUsersUserMin>(
            (item) => VKUsersUserMin.fromMap(item),
          )
          ?.toList(),
    );
  }
}

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
      'items': items?.map((item) => item?.toMap()),
      'profiles': profiles?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAppsGetLeaderboardExtendedResponse.fromMap(
      Map<String, dynamic> map) {
    return VKAppsGetLeaderboardExtendedResponse(
      count: map['count'] as int,
      items: map['items']?.map((item) => VKAppsLeaderboard.fromMap(item)),
      profiles: map['profiles']?.map((item) => VKUsersUserMin.fromMap(item)),
    );
  }
}

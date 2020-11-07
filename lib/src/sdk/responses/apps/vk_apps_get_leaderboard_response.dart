import '../../objects/vk_objects.dart';

class VKAppsGetLeaderboardResponse {
  /// Total number.
  final int count;

  final List<VKAppsLeaderboard> items;

  const VKAppsGetLeaderboardResponse({
    this.count,
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAppsGetLeaderboardResponse.fromMap(Map<String, dynamic> map) {
    return VKAppsGetLeaderboardResponse(
      count: map['count'] as int,
      items: map['items']?.map((item) => VKAppsLeaderboard.fromMap(item)),
    );
  }
}

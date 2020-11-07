import '../../objects/vk_objects.dart';

class VKNotificationsGetResponse {
  /// Total number.
  final int count;

  final List<VKUsersUser> profiles;

  final List<VKGroupsGroup> groups;

  /// Time when user has been checked notifications last time.
  final int lastViewed;

  final List<VKPhotosPhoto> photos;

  final List<VKVideoVideo> videos;

  final List<VKAppsApp> apps;

  final String nextFrom;

  final int ttl;

  const VKNotificationsGetResponse({
    this.count,
    this.profiles,
    this.groups,
    this.lastViewed,
    this.photos,
    this.videos,
    this.apps,
    this.nextFrom,
    this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'profiles': profiles?.map((item) => item?.toMap())?.toList(),
      'groups': groups?.map((item) => item?.toMap())?.toList(),
      'last_viewed': lastViewed,
      'photos': photos?.map((item) => item?.toMap())?.toList(),
      'videos': videos?.map((item) => item?.toMap())?.toList(),
      'apps': apps?.map((item) => item?.toMap())?.toList(),
      'next_from': nextFrom,
      'ttl': ttl,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKNotificationsGetResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKNotificationsGetResponse(
      count: map['count'] as int,
      profiles:
          map['profiles']?.map((item) => VKUsersUser.fromMap(item))?.toList(),
      groups:
          map['groups']?.map((item) => VKGroupsGroup.fromMap(item))?.toList(),
      lastViewed: map['last_viewed'] as int,
      photos:
          map['photos']?.map((item) => VKPhotosPhoto.fromMap(item))?.toList(),
      videos:
          map['videos']?.map((item) => VKVideoVideo.fromMap(item))?.toList(),
      apps: map['apps']?.map((item) => VKAppsApp.fromMap(item))?.toList(),
      nextFrom: map['next_from'] as String,
      ttl: map['ttl'] as int,
    );
  }
}

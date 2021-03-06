import '../groups/vk_groups_group_audio.dart';
import '../groups/vk_groups_group_full_age_limits.dart';
import '../groups/vk_groups_group_is_closed.dart';
import '../groups/vk_groups_group_photos.dart';
import '../groups/vk_groups_group_video.dart';
import '../groups/vk_groups_group_wall.dart';
import 'vk_callback_group_market.dart';

class VKCallbackGroupSettingsChanges {
  final String title;

  final String description;

  final VKGroupsGroupIsClosed access;

  final String screenName;

  final int publicCategory;

  final int publicSubcategory;

  final VKGroupsGroupFullAgeLimits ageLimits;

  final String website;

  final VKGroupsGroupWall enableStatusDefault;

  final VKGroupsGroupAudio enableAudio;

  final VKGroupsGroupVideo enableVideo;

  final VKGroupsGroupPhotos enablePhoto;

  final VKCallbackGroupMarket enableMarket;

  const VKCallbackGroupSettingsChanges({
    this.title,
    this.description,
    this.access,
    this.screenName,
    this.publicCategory,
    this.publicSubcategory,
    this.ageLimits,
    this.website,
    this.enableStatusDefault,
    this.enableAudio,
    this.enableVideo,
    this.enablePhoto,
    this.enableMarket,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'description': description,
      'access': access?.value,
      'screen_name': screenName,
      'public_category': publicCategory,
      'public_subcategory': publicSubcategory,
      'age_limits': ageLimits?.value,
      'website': website,
      'enable_status_default': enableStatusDefault?.value,
      'enable_audio': enableAudio?.value,
      'enable_video': enableVideo?.value,
      'enable_photo': enablePhoto?.value,
      'enable_market': enableMarket?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKCallbackGroupSettingsChanges.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKCallbackGroupSettingsChanges(
      title: map['title'] as String,
      description: map['description'] as String,
      access: VKGroupsGroupIsClosed(map['access']),
      screenName: map['screen_name'] as String,
      publicCategory: map['public_category'] as int,
      publicSubcategory: map['public_subcategory'] as int,
      ageLimits: VKGroupsGroupFullAgeLimits(map['age_limits']),
      website: map['website'] as String,
      enableStatusDefault: VKGroupsGroupWall(map['enable_status_default']),
      enableAudio: VKGroupsGroupAudio(map['enable_audio']),
      enableVideo: VKGroupsGroupVideo(map['enable_video']),
      enablePhoto: VKGroupsGroupPhotos(map['enable_photo']),
      enableMarket: VKCallbackGroupMarket(map['enable_market']),
    );
  }
}

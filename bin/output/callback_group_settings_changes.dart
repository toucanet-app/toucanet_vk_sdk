import 'groups_group_is_closed.dart';
import 'groups_group_full_age_limits.dart';
import 'groups_group_wall.dart';
import 'groups_group_audio.dart';
import 'groups_group_video.dart';
import 'groups_group_photos.dart';
import 'callback_group_market.dart';

class CallbackGroupSettingsChanges {
  final String title;

  final String description;

  final GroupsGroupIsClosed access;

  final String screenName;

  final int publicCategory;

  final int publicSubcategory;

  final GroupsGroupFullAgeLimits ageLimits;

  final String website;

  final GroupsGroupWall enableStatusDefault;

  final GroupsGroupAudio enableAudio;

  final GroupsGroupVideo enableVideo;

  final GroupsGroupPhotos enablePhoto;

  final CallbackGroupMarket enableMarket;

  const CallbackGroupSettingsChanges({
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

  factory CallbackGroupSettingsChanges.fromMap(Map<String, dynamic> map) {
    return CallbackGroupSettingsChanges(
      title: map['title'] as String,
      description: map['description'] as String,
      access: GroupsGroupIsClosed(map['access']),
      screenName: map['screen_name'] as String,
      publicCategory: map['public_category'] as int,
      publicSubcategory: map['public_subcategory'] as int,
      ageLimits: GroupsGroupFullAgeLimits(map['age_limits']),
      website: map['website'] as String,
      enableStatusDefault: GroupsGroupWall(map['enable_status_default']),
      enableAudio: GroupsGroupAudio(map['enable_audio']),
      enableVideo: GroupsGroupVideo(map['enable_video']),
      enablePhoto: GroupsGroupPhotos(map['enable_photo']),
      enableMarket: CallbackGroupMarket(map['enable_market']),
    );
  }
}

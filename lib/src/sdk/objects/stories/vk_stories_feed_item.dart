import 'package:meta/meta.dart';

import '../apps/vk_apps_app_min.dart';
import 'vk_stories_promo_block.dart';
import 'vk_stories_story.dart';

class VKStoriesFeedItem {
  /// Type of Feed Item.
  final String type;

  /// Author stories.
  final List<VKStoriesStory> stories;

  /// Grouped stories of various authors (for types community_grouped_stories/app_grouped_stories type).
  final List<VKStoriesFeedItem> grouped;

  /// App, which stories has been grouped (for type app_grouped_stories).
  final VKAppsAppMin app;

  /// Additional data for promo stories (for type promo_stories).
  final VKStoriesPromoBlock promoData;

  const VKStoriesFeedItem({
    @required this.type,
    this.stories,
    this.grouped,
    this.app,
    this.promoData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'stories': stories?.map((item) => item?.toMap())?.toList(),
      'grouped': grouped?.map((item) => item?.toMap())?.toList(),
      'app': app?.toMap(),
      'promo_data': promoData?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKStoriesFeedItem.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKStoriesFeedItem(
      type: map['type'] as String,
      stories:
          map['stories']?.map((item) => VKStoriesStory.fromMap(item))?.toList(),
      grouped: map['grouped']
          ?.map((item) => VKStoriesFeedItem.fromMap(item))
          ?.toList(),
      app: VKAppsAppMin.fromMap(map['app']),
      promoData: VKStoriesPromoBlock.fromMap(map['promo_data']),
    );
  }
}

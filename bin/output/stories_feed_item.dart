import 'stories_story.dart';
import 'stories_feed_item.dart';
import 'apps_app_min.dart';
import 'stories_promo_block.dart';
import 'package:meta/meta.dart';

class StoriesFeedItem {
  /// Type of Feed Item.
  final String type;

  /// Author stories.
  final List<StoriesStory> stories;

  /// Grouped stories of various authors (for types community_grouped_stories/app_grouped_stories type).
  final List<StoriesFeedItem> grouped;

  /// App, which stories has been grouped (for type app_grouped_stories).
  final AppsAppMin app;

  /// Additional data for promo stories (for type promo_stories).
  final StoriesPromoBlock promoData;

  const StoriesFeedItem({
    @required this.type,
    this.stories,
    this.grouped,
    this.app,
    this.promoData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'stories': stories?.map((item) => item?.toMap()),
      'grouped': grouped?.map((item) => item?.toMap()),
      'app': app?.toMap(),
      'promo_data': promoData?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory StoriesFeedItem.fromMap(Map<String, dynamic> map) {
    return StoriesFeedItem(
      type: map['type'] as String,
      stories: map['stories']?.map((item) => StoriesStory.fromMap(item)),
      grouped: map['grouped']?.map((item) => StoriesFeedItem.fromMap(item)),
      app: AppsAppMin.fromMap(map['app']),
      promoData: StoriesPromoBlock.fromMap(map['promo_data']),
    );
  }
}

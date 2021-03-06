import 'package:meta/meta.dart';

import '../wall/vk_wall_wallpost.dart';
import 'vk_newsfeed_newsfeed_item_type.dart';

class VKNewsfeedItemDigest {
  final VKNewsfeedNewsfeedItemType type;

  /// Item source ID.
  final int sourceId;

  /// Date when item has been added in Unixtime.
  final int date;

  final String buttonText;

  /// id of feed in digest.
  final String feedId;

  final List<VKWallWallpost> items;

  final List<String> mainPostIds;

  /// type of digest.
  final String template;

  final String title;

  final String trackCode;

  const VKNewsfeedItemDigest({
    @required this.type,
    @required this.sourceId,
    @required this.date,
    this.buttonText,
    this.feedId,
    this.items,
    this.mainPostIds,
    this.template,
    this.title,
    this.trackCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type?.value,
      'source_id': sourceId,
      'date': date,
      'button_text': buttonText,
      'feed_id': feedId,
      'items': items
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
      'main_post_ids': mainPostIds,
      'template': template,
      'title': title,
      'track_code': trackCode,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKNewsfeedItemDigest.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKNewsfeedItemDigest(
      type: VKNewsfeedNewsfeedItemType(map['type']),
      sourceId: map['source_id'] as int,
      date: map['date'] as int,
      buttonText: map['button_text'] as String,
      feedId: map['feed_id'] as String,
      items: map['items']
          ?.map<VKWallWallpost>(
            (item) => VKWallWallpost.fromMap(item),
          )
          ?.toList(),
      mainPostIds: map['main_post_ids'] as List<String>,
      template: map['template'] as String,
      title: map['title'] as String,
      trackCode: map['track_code'] as String,
    );
  }
}

import 'package:meta/meta.dart';

import '../base/vk_base_comments_info.dart';
import '../base/vk_base_likes_info.dart';
import 'vk_newsfeed_newsfeed_item_type.dart';

class VKNewsfeedItemTopic {
  final VKNewsfeedNewsfeedItemType type;

  /// Item source ID.
  final int sourceId;

  /// Date when item has been added in Unixtime.
  final int date;

  final VKBaseCommentsInfo comments;

  final VKBaseLikesInfo likes;

  /// Topic post ID.
  final int postId;

  /// Post text.
  final String text;

  const VKNewsfeedItemTopic({
    @required this.type,
    @required this.sourceId,
    @required this.date,
    this.comments,
    this.likes,
    this.postId,
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type?.value,
      'source_id': sourceId,
      'date': date,
      'comments': comments?.toMap(),
      'likes': likes?.toMap(),
      'post_id': postId,
      'text': text,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKNewsfeedItemTopic.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKNewsfeedItemTopic(
      type: VKNewsfeedNewsfeedItemType(map['type']),
      sourceId: map['source_id'] as int,
      date: map['date'] as int,
      comments: VKBaseCommentsInfo.fromMap(map['comments']),
      likes: VKBaseLikesInfo.fromMap(map['likes']),
      postId: map['post_id'] as int,
      text: map['text'] as String,
    );
  }
}

import 'newsfeed_newsfeed_item_type.dart';
import 'base_comments_info.dart';
import 'base_likes_info.dart';
import 'package:meta/meta.dart';

class NewsfeedItemTopic {
  final NewsfeedNewsfeedItemType type;

  /// Item source ID.
  final int sourceId;

  /// Date when item has been added in Unixtime.
  final int date;

  final BaseCommentsInfo comments;

  final BaseLikesInfo likes;

  /// Topic post ID.
  final int postId;

  /// Post text.
  final String text;

  const NewsfeedItemTopic({
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

  factory NewsfeedItemTopic.fromMap(Map<String, dynamic> map) {
    return NewsfeedItemTopic(
      type: NewsfeedNewsfeedItemType(map['type']),
      sourceId: map['source_id'] as int,
      date: map['date'] as int,
      comments: BaseCommentsInfo.fromMap(map['comments']),
      likes: BaseLikesInfo.fromMap(map['likes']),
      postId: map['post_id'] as int,
      text: map['text'] as String,
    );
  }
}

import 'newsfeed_newsfeed_item_type.dart';
import 'newsfeed_item_audio_audio.dart';
import 'package:meta/meta.dart';

class NewsfeedItemAudio {
  final NewsfeedNewsfeedItemType type;

  /// Item source ID.
  final int sourceId;

  /// Date when item has been added in Unixtime.
  final int date;

  final NewsfeedItemAudioAudio audio;

  /// Post ID.
  final int postId;

  const NewsfeedItemAudio({
    @required this.type,
    @required this.sourceId,
    @required this.date,
    this.audio,
    this.postId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type?.value,
      'source_id': sourceId,
      'date': date,
      'audio': audio?.toMap(),
      'post_id': postId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory NewsfeedItemAudio.fromMap(Map<String, dynamic> map) {
    return NewsfeedItemAudio(
      type: NewsfeedNewsfeedItemType(map['type']),
      sourceId: map['source_id'] as int,
      date: map['date'] as int,
      audio: NewsfeedItemAudioAudio.fromMap(map['audio']),
      postId: map['post_id'] as int,
    );
  }
}

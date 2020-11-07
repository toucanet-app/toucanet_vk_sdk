import 'package:meta/meta.dart';

import 'newsfeed_item_audio_audio.dart';
import 'newsfeed_newsfeed_item_type.dart';

class VKNewsfeedItemAudio {
  final VKNewsfeedNewsfeedItemType type;

  /// Item source ID.
  final int sourceId;

  /// Date when item has been added in Unixtime.
  final int date;

  final VKNewsfeedItemAudioAudio audio;

  /// Post ID.
  final int postId;

  const VKNewsfeedItemAudio({
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

  factory VKNewsfeedItemAudio.fromMap(Map<String, dynamic> map) {
    return VKNewsfeedItemAudio(
      type: VKNewsfeedNewsfeedItemType(map['type']),
      sourceId: map['source_id'] as int,
      date: map['date'] as int,
      audio: VKNewsfeedItemAudioAudio.fromMap(map['audio']),
      postId: map['post_id'] as int,
    );
  }
}

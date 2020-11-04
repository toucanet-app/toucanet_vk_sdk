import 'audio_audio.dart';

class NewsfeedItemAudioAudio {
  /// Audios number.
  final int count;

  final List<AudioAudio> items;

  const NewsfeedItemAudioAudio({
    this.count,
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory NewsfeedItemAudioAudio.fromMap(Map<String, dynamic> map) {
    return NewsfeedItemAudioAudio(
      count: map['count'] as int,
      items: map['items']?.map((item) => AudioAudio.fromMap(item)),
    );
  }
}

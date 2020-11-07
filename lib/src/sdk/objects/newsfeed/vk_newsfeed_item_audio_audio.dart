import '../audio/vk_audio_audio.dart';

class VKNewsfeedItemAudioAudio {
  /// Audios number.
  final int count;

  final List<VKAudioAudio> items;

  const VKNewsfeedItemAudioAudio({
    this.count,
    this.items,
  }) : assert(count == null || count >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap())?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKNewsfeedItemAudioAudio.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKNewsfeedItemAudioAudio(
      count: map['count'] as int,
      items: map['items']?.map((item) => VKAudioAudio.fromMap(item))?.toList(),
    );
  }
}

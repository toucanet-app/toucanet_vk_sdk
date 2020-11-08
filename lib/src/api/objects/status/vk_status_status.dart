import 'package:meta/meta.dart';

import '../audio/vk_audio_audio.dart';

class VKStatusStatus {
  /// Status text.
  final String text;

  final VKAudioAudio audio;

  const VKStatusStatus({
    @required this.text,
    this.audio,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text': text,
      'audio': audio?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKStatusStatus.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKStatusStatus(
      text: map['text'] as String,
      audio: VKAudioAudio.fromMap(map['audio']),
    );
  }
}

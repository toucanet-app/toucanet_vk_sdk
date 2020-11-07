import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKStatusGetResponse {
  /// Status text.
  final String text;

  final VKAudioAudio audio;

  const VKStatusGetResponse({
    @required this.text,
    this.audio,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text': text,
      'audio': audio?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKStatusGetResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKStatusGetResponse(
      text: map['text'] as String,
      audio: VKAudioAudio.fromMap(map['audio']),
    );
  }
}

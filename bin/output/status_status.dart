import 'audio_audio.dart';
import 'package:meta/meta.dart';

class StatusStatus {
  /// Status text.
  final String text;

  final AudioAudio audio;

  const StatusStatus({
    @required this.text,
    this.audio,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text': text,
      'audio': audio?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory StatusStatus.fromMap(Map<String, dynamic> map) {
    return StatusStatus(
      text: map['text'] as String,
      audio: AudioAudio.fromMap(map['audio']),
    );
  }
}

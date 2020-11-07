import 'package:meta/meta.dart';

class VKDocsDocPreviewAudioMsg {
  /// Audio message duration in seconds.
  final int duration;

  /// MP3 file URL.
  final String linkMp3;

  /// OGG file URL.
  final String linkOgg;

  /// The list of Sound visualisation.
  final List<int> waveform;

  const VKDocsDocPreviewAudioMsg({
    @required this.duration,
    @required this.linkMp3,
    @required this.linkOgg,
    @required this.waveform,
  }) : assert(duration >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': duration,
      'link_mp3': linkMp3,
      'link_ogg': linkOgg,
      'waveform': waveform,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKDocsDocPreviewAudioMsg.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKDocsDocPreviewAudioMsg(
      duration: map['duration'] as int,
      linkMp3: map['link_mp3'] as String,
      linkOgg: map['link_ogg'] as String,
      waveform: map['waveform'] as List<int>,
    );
  }
}

import 'package:meta/meta.dart';

class DocsDocPreviewAudioMsg {
  /// Audio message duration in seconds.
  final int duration;

  /// MP3 file URL.
  final String linkMp3;

  /// OGG file URL.
  final String linkOgg;

  /// The list of Sound visualisation.
  final List<int> waveform;

  const DocsDocPreviewAudioMsg({
    @required this.duration,
    @required this.linkMp3,
    @required this.linkOgg,
    @required this.waveform,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': duration,
      'link_mp3': linkMp3,
      'link_ogg': linkOgg,
      'waveform': waveform,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory DocsDocPreviewAudioMsg.fromMap(Map<String, dynamic> map) {
    return DocsDocPreviewAudioMsg(
      duration: map['duration'] as int,
      linkMp3: map['link_mp3'] as String,
      linkOgg: map['link_ogg'] as String,
      waveform: map['waveform'] as List<int>,
    );
  }
}

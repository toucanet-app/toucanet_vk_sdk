import 'package:meta/meta.dart';

class VKMessagesAudioMessage {
  /// Access key for audio message.
  final String accessKey;

  /// Audio message duration in seconds.
  final int duration;

  /// Audio message ID.
  final int id;

  /// MP3 file URL.
  final String linkMp3;

  /// OGG file URL.
  final String linkOgg;

  /// Audio message owner ID.
  final int ownerId;

  /// The list of Sound visualisation.
  final List<int> waveform;

  const VKMessagesAudioMessage({
    this.accessKey,
    @required this.duration,
    @required this.id,
    @required this.linkMp3,
    @required this.linkOgg,
    @required this.ownerId,
    @required this.waveform,
  })  : assert(duration >= 0),
        assert(id >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access_key': accessKey,
      'duration': duration,
      'id': id,
      'link_mp3': linkMp3,
      'link_ogg': linkOgg,
      'owner_id': ownerId,
      'waveform': waveform,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMessagesAudioMessage.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKMessagesAudioMessage(
      accessKey: map['access_key'] as String,
      duration: map['duration'] as int,
      id: map['id'] as int,
      linkMp3: map['link_mp3'] as String,
      linkOgg: map['link_ogg'] as String,
      ownerId: map['owner_id'] as int,
      waveform: map['waveform'] as List<int>,
    );
  }
}

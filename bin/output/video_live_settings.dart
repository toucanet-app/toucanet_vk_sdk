import 'base_bool_int.dart';

class VideoLiveSettings {
  /// If user car rewind live or not.
  final BaseBoolInt canRewind;

  /// If live is endless or not.
  final BaseBoolInt isEndless;

  /// Max possible time for rewind.
  final int maxDuration;

  const VideoLiveSettings({
    this.canRewind,
    this.isEndless,
    this.maxDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'can_rewind': canRewind?.value,
      'is_endless': isEndless?.value,
      'max_duration': maxDuration,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VideoLiveSettings.fromMap(Map<String, dynamic> map) {
    return VideoLiveSettings(
      canRewind: BaseBoolInt(map['can_rewind']),
      isEndless: BaseBoolInt(map['is_endless']),
      maxDuration: map['max_duration'] as int,
    );
  }
}

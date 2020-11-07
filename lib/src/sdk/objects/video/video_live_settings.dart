import '../base/base_bool_int.dart';

class VKVideoLiveSettings {
  /// If user car rewind live or not.
  final VKBaseBoolInt canRewind;

  /// If live is endless or not.
  final VKBaseBoolInt isEndless;

  /// Max possible time for rewind.
  final int maxDuration;

  const VKVideoLiveSettings({
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

  factory VKVideoLiveSettings.fromMap(Map<String, dynamic> map) {
    return VKVideoLiveSettings(
      canRewind: VKBaseBoolInt(map['can_rewind']),
      isEndless: VKBaseBoolInt(map['is_endless']),
      maxDuration: map['max_duration'] as int,
    );
  }
}

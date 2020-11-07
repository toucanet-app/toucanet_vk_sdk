class VKAdsLookalikeRequestSaveAudienceLevel {
  /// Save audience level id, which is used in save audience queries.
  final int level;

  /// Saved audience audience size for according level.
  final int audienceCount;

  const VKAdsLookalikeRequestSaveAudienceLevel({
    this.level,
    this.audienceCount,
  })  : assert(level >= 1),
        assert(audienceCount >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'level': level,
      'audience_count': audienceCount,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsLookalikeRequestSaveAudienceLevel.fromMap(
      Map<String, dynamic> map) {
    return VKAdsLookalikeRequestSaveAudienceLevel(
      level: map['level'] as int,
      audienceCount: map['audience_count'] as int,
    );
  }
}

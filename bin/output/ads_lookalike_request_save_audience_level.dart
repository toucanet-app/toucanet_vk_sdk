class AdsLookalikeRequestSaveAudienceLevel {
  /// Save audience level id, which is used in save audience queries.
  final int level;

  /// Saved audience audience size for according level.
  final int audienceCount;

  const AdsLookalikeRequestSaveAudienceLevel({
    this.level,
    this.audienceCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'level': level,
      'audience_count': audienceCount,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory AdsLookalikeRequestSaveAudienceLevel.fromMap(
      Map<String, dynamic> map) {
    return AdsLookalikeRequestSaveAudienceLevel(
      level: map['level'] as int,
      audienceCount: map['audience_count'] as int,
    );
  }
}

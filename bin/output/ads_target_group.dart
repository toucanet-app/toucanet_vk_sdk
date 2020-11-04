class AdsTargetGroup {
  /// Audience.
  final int audienceCount;

  /// Site domain.
  final String domain;

  /// Group ID.
  final int id;

  /// Number of days for user to be in group.
  final int lifetime;

  /// Group name.
  final String name;

  /// Pixel code.
  final String pixel;

  const AdsTargetGroup({
    this.audienceCount,
    this.domain,
    this.id,
    this.lifetime,
    this.name,
    this.pixel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audience_count': audienceCount,
      'domain': domain,
      'id': id,
      'lifetime': lifetime,
      'name': name,
      'pixel': pixel,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory AdsTargetGroup.fromMap(Map<String, dynamic> map) {
    return AdsTargetGroup(
      audienceCount: map['audience_count'] as int,
      domain: map['domain'] as String,
      id: map['id'] as int,
      lifetime: map['lifetime'] as int,
      name: map['name'] as String,
      pixel: map['pixel'] as String,
    );
  }
}

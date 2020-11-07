class VKUtilsStatsCountry {
  /// Country ID.
  final int countryId;

  /// Views number.
  final int views;

  const VKUtilsStatsCountry({
    this.countryId,
    this.views,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'country_id': countryId,
      'views': views,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKUtilsStatsCountry.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKUtilsStatsCountry(
      countryId: map['country_id'] as int,
      views: map['views'] as int,
    );
  }
}

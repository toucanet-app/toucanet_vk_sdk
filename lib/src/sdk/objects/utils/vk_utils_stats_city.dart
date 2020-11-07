class VKUtilsStatsCity {
  /// City ID.
  final int cityId;

  /// Views number.
  final int views;

  const VKUtilsStatsCity({
    this.cityId,
    this.views,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'city_id': cityId,
      'views': views,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKUtilsStatsCity.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKUtilsStatsCity(
      cityId: map['city_id'] as int,
      views: map['views'] as int,
    );
  }
}

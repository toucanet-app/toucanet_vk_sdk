

class UtilsStatsCity {
  /// City ID.
  final int cityId;

  /// Views number.
  final int views;

  const UtilsStatsCity({
    this.cityId,
    this.views,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'city_id': cityId,
      'views': views,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory UtilsStatsCity.fromMap(Map<String, dynamic> map) {
    return UtilsStatsCity(
      cityId: map['city_id'] as int,
      views: map['views'] as int,
    );
  }
}

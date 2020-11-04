

class UtilsStatsCountry {
  /// Country ID.
  final int countryId;

  /// Views number.
  final int views;

  const UtilsStatsCountry({
    this.countryId,
    this.views,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'country_id': countryId,
      'views': views,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory UtilsStatsCountry.fromMap(Map<String, dynamic> map) {
    return UtilsStatsCountry(
      countryId: map['country_id'] as int,
      views: map['views'] as int,
    );
  }
}

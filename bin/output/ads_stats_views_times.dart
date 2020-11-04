class AdsStatsViewsTimes {
  final int viewsAdsTimes1;

  final int viewsAdsTimes2;

  final int viewsAdsTimes3;

  final int viewsAdsTimes4;

  final String viewsAdsTimes5;

  final int viewsAdsTimes6;

  final int viewsAdsTimes7;

  final int viewsAdsTimes8;

  final int viewsAdsTimes9;

  final int viewsAdsTimes10;

  final int viewsAdsTimes11Plus;

  const AdsStatsViewsTimes({
    this.viewsAdsTimes1,
    this.viewsAdsTimes2,
    this.viewsAdsTimes3,
    this.viewsAdsTimes4,
    this.viewsAdsTimes5,
    this.viewsAdsTimes6,
    this.viewsAdsTimes7,
    this.viewsAdsTimes8,
    this.viewsAdsTimes9,
    this.viewsAdsTimes10,
    this.viewsAdsTimes11Plus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'views_ads_times_1': viewsAdsTimes1,
      'views_ads_times_2': viewsAdsTimes2,
      'views_ads_times_3': viewsAdsTimes3,
      'views_ads_times_4': viewsAdsTimes4,
      'views_ads_times_5': viewsAdsTimes5,
      'views_ads_times_6': viewsAdsTimes6,
      'views_ads_times_7': viewsAdsTimes7,
      'views_ads_times_8': viewsAdsTimes8,
      'views_ads_times_9': viewsAdsTimes9,
      'views_ads_times_10': viewsAdsTimes10,
      'views_ads_times_11_plus': viewsAdsTimes11Plus,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory AdsStatsViewsTimes.fromMap(Map<String, dynamic> map) {
    return AdsStatsViewsTimes(
      viewsAdsTimes1: map['views_ads_times_1'] as int,
      viewsAdsTimes2: map['views_ads_times_2'] as int,
      viewsAdsTimes3: map['views_ads_times_3'] as int,
      viewsAdsTimes4: map['views_ads_times_4'] as int,
      viewsAdsTimes5: map['views_ads_times_5'] as String,
      viewsAdsTimes6: map['views_ads_times_6'] as int,
      viewsAdsTimes7: map['views_ads_times_7'] as int,
      viewsAdsTimes8: map['views_ads_times_8'] as int,
      viewsAdsTimes9: map['views_ads_times_9'] as int,
      viewsAdsTimes10: map['views_ads_times_10'] as int,
      viewsAdsTimes11Plus: map['views_ads_times_11_plus'] as int,
    );
  }
}

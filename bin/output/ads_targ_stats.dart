import 'package:meta/meta.dart';

class AdsTargStats {
  /// Audience.
  final int audienceCount;

  /// Recommended CPC value for 50% reach (old format).
  final double recommendedCpc;

  /// Recommended CPM value for 50% reach (old format).
  final double recommendedCpm;

  /// Recommended CPC value for 50% reach.
  final double recommendedCpc50;

  /// Recommended CPM value for 50% reach.
  final double recommendedCpm50;

  /// Recommended CPC value for 70% reach.
  final double recommendedCpc70;

  /// Recommended CPM value for 70% reach.
  final double recommendedCpm70;

  /// Recommended CPC value for 90% reach.
  final double recommendedCpc90;

  /// Recommended CPM value for 90% reach.
  final double recommendedCpm90;

  const AdsTargStats({
    @required this.audienceCount,
    this.recommendedCpc,
    this.recommendedCpm,
    this.recommendedCpc50,
    this.recommendedCpm50,
    this.recommendedCpc70,
    this.recommendedCpm70,
    this.recommendedCpc90,
    this.recommendedCpm90,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audience_count': audienceCount,
      'recommended_cpc': recommendedCpc,
      'recommended_cpm': recommendedCpm,
      'recommended_cpc_50': recommendedCpc50,
      'recommended_cpm_50': recommendedCpm50,
      'recommended_cpc_70': recommendedCpc70,
      'recommended_cpm_70': recommendedCpm70,
      'recommended_cpc_90': recommendedCpc90,
      'recommended_cpm_90': recommendedCpm90,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory AdsTargStats.fromMap(Map<String, dynamic> map) {
    return AdsTargStats(
      audienceCount: map['audience_count'] as int,
      recommendedCpc: map['recommended_cpc'] as double,
      recommendedCpm: map['recommended_cpm'] as double,
      recommendedCpc50: map['recommended_cpc_50'] as double,
      recommendedCpm50: map['recommended_cpm_50'] as double,
      recommendedCpc70: map['recommended_cpc_70'] as double,
      recommendedCpm70: map['recommended_cpm_70'] as double,
      recommendedCpc90: map['recommended_cpc_90'] as double,
      recommendedCpm90: map['recommended_cpm_90'] as double,
    );
  }
}

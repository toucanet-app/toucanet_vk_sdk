import 'package:meta/meta.dart';

import '../base/vk_base_bool_int.dart';
import 'vk_ads_ad_approved.dart';
import 'vk_ads_ad_cost_type.dart';
import 'vk_ads_ad_status.dart';

class VKAdsAd {
  /// Ad format.
  final int adFormat;

  /// Ad platform.
  final String adPlatform;

  /// Total limit.
  final int allLimit;

  final VKAdsAdApproved approved;

  /// Campaign ID.
  final int campaignId;

  /// Category ID.
  final int category1Id;

  /// Additional category ID.
  final int category2Id;

  final VKAdsAdCostType costType;

  /// Cost of a click, kopecks.
  final int cpc;

  /// Cost of 1000 impressions, kopecks.
  final int cpm;

  /// Cost of an action, kopecks.
  final int cpa;

  /// Cost of 1000 impressions optimized, kopecks.
  final int ocpm;

  /// Max cost of target actions for autobidding, kopecks.
  final int autobiddingMaxCost;

  /// Information whether disclaimer is enabled.
  final VKBaseBoolInt disclaimerMedical;

  /// Information whether disclaimer is enabled.
  final VKBaseBoolInt disclaimerSpecialist;

  /// Information whether disclaimer is enabled.
  final VKBaseBoolInt disclaimerSupplements;

  /// Ad ID.
  final int id;

  /// Impressions limit.
  final int impressionsLimit;

  /// Information whether impressions are limited.
  final VKBaseBoolInt impressionsLimited;

  /// Ad title.
  final String name;

  final VKAdsAdStatus status;

  /// Information whether the ad is a video.
  final VKBaseBoolInt video;

  const VKAdsAd({
    @required this.adFormat,
    this.adPlatform,
    @required this.allLimit,
    @required this.approved,
    @required this.campaignId,
    this.category1Id,
    this.category2Id,
    @required this.costType,
    this.cpc,
    this.cpm,
    this.cpa,
    this.ocpm,
    this.autobiddingMaxCost,
    this.disclaimerMedical,
    this.disclaimerSpecialist,
    this.disclaimerSupplements,
    @required this.id,
    this.impressionsLimit,
    this.impressionsLimited,
    @required this.name,
    @required this.status,
    this.video,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ad_format': adFormat,
      'ad_platform': adPlatform,
      'all_limit': allLimit,
      'approved': approved?.value,
      'campaign_id': campaignId,
      'category1_id': category1Id,
      'category2_id': category2Id,
      'cost_type': costType?.value,
      'cpc': cpc,
      'cpm': cpm,
      'cpa': cpa,
      'ocpm': ocpm,
      'autobidding_max_cost': autobiddingMaxCost,
      'disclaimer_medical': disclaimerMedical?.value,
      'disclaimer_specialist': disclaimerSpecialist?.value,
      'disclaimer_supplements': disclaimerSupplements?.value,
      'id': id,
      'impressions_limit': impressionsLimit,
      'impressions_limited': impressionsLimited?.value,
      'name': name,
      'status': status?.value,
      'video': video?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsAd.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAdsAd(
      adFormat: map['ad_format'] as int,
      adPlatform: map['ad_platform'] as String,
      allLimit: map['all_limit'] as int,
      approved: VKAdsAdApproved(map['approved']),
      campaignId: map['campaign_id'] as int,
      category1Id: map['category1_id'] as int,
      category2Id: map['category2_id'] as int,
      costType: VKAdsAdCostType(map['cost_type']),
      cpc: map['cpc'] as int,
      cpm: map['cpm'] as int,
      cpa: map['cpa'] as int,
      ocpm: map['ocpm'] as int,
      autobiddingMaxCost: map['autobidding_max_cost'] as int,
      disclaimerMedical: VKBaseBoolInt(map['disclaimer_medical']),
      disclaimerSpecialist: VKBaseBoolInt(map['disclaimer_specialist']),
      disclaimerSupplements: VKBaseBoolInt(map['disclaimer_supplements']),
      id: map['id'] as int,
      impressionsLimit: map['impressions_limit'] as int,
      impressionsLimited: VKBaseBoolInt(map['impressions_limited']),
      name: map['name'] as String,
      status: VKAdsAdStatus(map['status']),
      video: VKBaseBoolInt(map['video']),
    );
  }
}

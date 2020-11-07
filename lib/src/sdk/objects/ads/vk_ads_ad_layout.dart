import 'package:meta/meta.dart';

import '../base/vk_base_bool_int.dart';
import 'vk_ads_ad_cost_type.dart';

class VKAdsAdLayout {
  /// Ad format.
  final int adFormat;

  /// Campaign ID.
  final int campaignId;

  final VKAdsAdCostType costType;

  /// Ad description.
  final String description;

  /// Ad ID.
  final int id;

  /// Image URL.
  final String imageSrc;

  /// URL of the preview image in double size.
  final String imageSrc2x;

  /// Domain of advertised object.
  final String linkDomain;

  /// URL of advertised object.
  final String linkUrl;

  /// link to preview an ad as it is shown on the website.
  final String previewLink;

  /// Ad title.
  final String title;

  /// Information whether the ad is a video.
  final VKBaseBoolInt video;

  const VKAdsAdLayout({
    @required this.adFormat,
    @required this.campaignId,
    @required this.costType,
    @required this.description,
    @required this.id,
    @required this.imageSrc,
    this.imageSrc2x,
    this.linkDomain,
    @required this.linkUrl,
    this.previewLink,
    @required this.title,
    this.video,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ad_format': adFormat,
      'campaign_id': campaignId,
      'cost_type': costType?.value,
      'description': description,
      'id': id,
      'image_src': imageSrc,
      'image_src_2x': imageSrc2x,
      'link_domain': linkDomain,
      'link_url': linkUrl,
      'preview_link': previewLink,
      'title': title,
      'video': video?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsAdLayout.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAdsAdLayout(
      adFormat: map['ad_format'] as int,
      campaignId: map['campaign_id'] as int,
      costType: VKAdsAdCostType(map['cost_type']),
      description: map['description'] as String,
      id: map['id'] as int,
      imageSrc: map['image_src'] as String,
      imageSrc2x: map['image_src_2x'] as String,
      linkDomain: map['link_domain'] as String,
      linkUrl: map['link_url'] as String,
      previewLink: map['preview_link'] as String,
      title: map['title'] as String,
      video: VKBaseBoolInt(map['video']),
    );
  }
}

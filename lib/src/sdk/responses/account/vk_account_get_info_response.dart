import '../../objects/vk_objects.dart';

class VKAccountGetInfoResponse {
  final VKBaseBoolInt wishlistsAePromoBannerShow;

  /// Two factor authentication is enabled.
  final VKBaseBoolInt twoFaRequired;

  /// Country code.
  final String country;

  /// Information whether HTTPS-only is enabled.
  final VKBaseBoolInt httpsRequired;

  /// Information whether user has been processed intro.
  final VKBaseBoolInt intro;

  final bool showVkAppsIntro;

  /// Ads slot id for MyTarget.
  final int miniAppsAdsSlotId;

  final int qrPromotion;

  final Map<String, dynamic> linkRedirects;

  /// Language ID.
  final int lang;

  /// Information whether wall comments should be hidden.
  final VKBaseBoolInt noWallReplies;

  /// Information whether only owners posts should be shown.
  final VKBaseBoolInt ownPostsDefault;

  final List<int> subscriptions;

  const VKAccountGetInfoResponse({
    this.wishlistsAePromoBannerShow,
    this.twoFaRequired,
    this.country,
    this.httpsRequired,
    this.intro,
    this.showVkAppsIntro,
    this.miniAppsAdsSlotId,
    this.qrPromotion,
    this.linkRedirects,
    this.lang,
    this.noWallReplies,
    this.ownPostsDefault,
    this.subscriptions,
  })  : assert(miniAppsAdsSlotId == null || miniAppsAdsSlotId >= 0),
        assert(qrPromotion == null || qrPromotion >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'wishlists_ae_promo_banner_show': wishlistsAePromoBannerShow?.value,
      '2fa_required': twoFaRequired?.value,
      'country': country,
      'https_required': httpsRequired?.value,
      'intro': intro?.value,
      'show_vk_apps_intro': showVkAppsIntro,
      'mini_apps_ads_slot_id': miniAppsAdsSlotId,
      'qr_promotion': qrPromotion,
      'link_redirects': linkRedirects,
      'lang': lang,
      'no_wall_replies': noWallReplies?.value,
      'own_posts_default': ownPostsDefault?.value,
      'subscriptions': subscriptions,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAccountGetInfoResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAccountGetInfoResponse(
      wishlistsAePromoBannerShow:
          VKBaseBoolInt(map['wishlists_ae_promo_banner_show']),
      twoFaRequired: VKBaseBoolInt(map['2fa_required']),
      country: map['country'] as String,
      httpsRequired: VKBaseBoolInt(map['https_required']),
      intro: VKBaseBoolInt(map['intro']),
      showVkAppsIntro: map['show_vk_apps_intro'] as bool,
      miniAppsAdsSlotId: map['mini_apps_ads_slot_id'] as int,
      qrPromotion: map['qr_promotion'] as int,
      linkRedirects: map['link_redirects'] as Map<String, dynamic>,
      lang: map['lang'] as int,
      noWallReplies: VKBaseBoolInt(map['no_wall_replies']),
      ownPostsDefault: VKBaseBoolInt(map['own_posts_default']),
      subscriptions: map['subscriptions'] as List<int>,
    );
  }
}

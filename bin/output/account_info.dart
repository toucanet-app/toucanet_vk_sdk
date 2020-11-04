import 'base_bool_int.dart';

class AccountInfo {
  final BaseBoolInt wishlistsAePromoBannerShow;

  /// Two factor authentication is enabled.
  final BaseBoolInt twoFaRequired;

  /// Country code.
  final String country;

  /// Information whether HTTPS-only is enabled.
  final BaseBoolInt httpsRequired;

  /// Information whether user has been processed intro.
  final BaseBoolInt intro;

  final bool showVkAppsIntro;

  /// Ads slot id for MyTarget.
  final int miniAppsAdsSlotId;

  final int qrPromotion;

  final Map<String, dynamic> linkRedirects;

  /// Language ID.
  final int lang;

  /// Information whether wall comments should be hidden.
  final BaseBoolInt noWallReplies;

  /// Information whether only owners posts should be shown.
  final BaseBoolInt ownPostsDefault;

  final List<int> subscriptions;

  const AccountInfo({
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
  });

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

  factory AccountInfo.fromMap(Map<String, dynamic> map) {
    return AccountInfo(
      wishlistsAePromoBannerShow:
          BaseBoolInt(map['wishlists_ae_promo_banner_show']),
      twoFaRequired: BaseBoolInt(map['2fa_required']),
      country: map['country'] as String,
      httpsRequired: BaseBoolInt(map['https_required']),
      intro: BaseBoolInt(map['intro']),
      showVkAppsIntro: map['show_vk_apps_intro'] as bool,
      miniAppsAdsSlotId: map['mini_apps_ads_slot_id'] as int,
      qrPromotion: map['qr_promotion'] as int,
      linkRedirects: map['link_redirects'] as Map<String, dynamic>,
      lang: map['lang'] as int,
      noWallReplies: BaseBoolInt(map['no_wall_replies']),
      ownPostsDefault: BaseBoolInt(map['own_posts_default']),
      subscriptions: map['subscriptions'] as List<int>,
    );
  }
}

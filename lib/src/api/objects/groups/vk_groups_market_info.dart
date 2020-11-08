import '../base/vk_base_bool_int.dart';
import '../market/vk_market_currency.dart';

class VKGroupsMarketInfo {
  /// Contact person ID.
  final int contactId;

  final VKMarketCurrency currency;

  /// Currency name.
  final String currencyText;

  /// Information whether the market is enabled.
  final VKBaseBoolInt enabled;

  /// Main market album ID.
  final int mainAlbumId;

  /// Maximum price.
  final String priceMax;

  /// Minimum price.
  final String priceMin;

  const VKGroupsMarketInfo({
    this.contactId,
    this.currency,
    this.currencyText,
    this.enabled,
    this.mainAlbumId,
    this.priceMax,
    this.priceMin,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contact_id': contactId,
      'currency': currency?.toMap(),
      'currency_text': currencyText,
      'enabled': enabled?.value,
      'main_album_id': mainAlbumId,
      'price_max': priceMax,
      'price_min': priceMin,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKGroupsMarketInfo.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKGroupsMarketInfo(
      contactId: map['contact_id'] as int,
      currency: VKMarketCurrency.fromMap(map['currency']),
      currencyText: map['currency_text'] as String,
      enabled: VKBaseBoolInt(map['enabled']),
      mainAlbumId: map['main_album_id'] as int,
      priceMax: map['price_max'] as String,
      priceMin: map['price_min'] as String,
    );
  }
}

import 'market_currency.dart';
import 'base_bool_int.dart';

class GroupsMarketInfo {
  /// Contact person ID.
  final int contactId;

  final MarketCurrency currency;

  /// Currency name.
  final String currencyText;

  /// Information whether the market is enabled.
  final BaseBoolInt enabled;

  /// Main market album ID.
  final int mainAlbumId;

  /// Maximum price.
  final String priceMax;

  /// Minimum price.
  final String priceMin;

  const GroupsMarketInfo({
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

  factory GroupsMarketInfo.fromMap(Map<String, dynamic> map) {
    return GroupsMarketInfo(
      contactId: map['contact_id'] as int,
      currency: MarketCurrency.fromMap(map['currency']),
      currencyText: map['currency_text'] as String,
      enabled: BaseBoolInt(map['enabled']),
      mainAlbumId: map['main_album_id'] as int,
      priceMax: map['price_max'] as String,
      priceMin: map['price_min'] as String,
    );
  }
}

import 'market_currency.dart';

class MarketPrice {
  /// Amount.
  final String amount;

  final MarketCurrency currency;

  final int discountRate;

  final String oldAmount;

  /// Text.
  final String text;

  const MarketPrice({
    this.amount,
    this.currency,
    this.discountRate,
    this.oldAmount,
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': amount,
      'currency': currency?.toMap(),
      'discount_rate': discountRate,
      'old_amount': oldAmount,
      'text': text,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory MarketPrice.fromMap(Map<String, dynamic> map) {
    return MarketPrice(
      amount: map['amount'] as String,
      currency: MarketCurrency.fromMap(map['currency']),
      discountRate: map['discount_rate'] as int,
      oldAmount: map['old_amount'] as String,
      text: map['text'] as String,
    );
  }
}

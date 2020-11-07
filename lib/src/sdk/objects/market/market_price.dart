import 'market_currency.dart';

class VKMarketPrice {
  /// Amount.
  final String amount;

  final VKMarketCurrency currency;

  final int discountRate;

  final String oldAmount;

  /// Text.
  final String text;

  const VKMarketPrice({
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

  factory VKMarketPrice.fromMap(Map<String, dynamic> map) {
    return VKMarketPrice(
      amount: map['amount'] as String,
      currency: VKMarketCurrency.fromMap(map['currency']),
      discountRate: map['discount_rate'] as int,
      oldAmount: map['old_amount'] as String,
      text: map['text'] as String,
    );
  }
}

import 'market_price.dart';
import 'package:meta/meta.dart';

class BaseLinkProduct {
  final MarketPrice price;

  final String merchant;

  final int ordersCount;

  const BaseLinkProduct({
    @required this.price,
    this.merchant,
    this.ordersCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'price': price?.toMap(),
      'merchant': merchant,
      'orders_count': ordersCount,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory BaseLinkProduct.fromMap(Map<String, dynamic> map) {
    return BaseLinkProduct(
      price: MarketPrice.fromMap(map['price']),
      merchant: map['merchant'] as String,
      ordersCount: map['orders_count'] as int,
    );
  }
}

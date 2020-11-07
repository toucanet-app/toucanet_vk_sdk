import 'package:meta/meta.dart';

import '../market/market_price.dart';

class VKBaseLinkProduct {
  final VKMarketPrice price;

  final String merchant;

  final int ordersCount;

  const VKBaseLinkProduct({
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

  factory VKBaseLinkProduct.fromMap(Map<String, dynamic> map) {
    return VKBaseLinkProduct(
      price: VKMarketPrice.fromMap(map['price']),
      merchant: map['merchant'] as String,
      ordersCount: map['orders_count'] as int,
    );
  }
}

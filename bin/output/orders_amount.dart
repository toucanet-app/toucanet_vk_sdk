import 'orders_amount_item.dart';

class OrdersAmount {
  final List<OrdersAmountItem> amounts;

  /// Currency name.
  final String currency;

  const OrdersAmount({
    this.amounts,
    this.currency,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amounts': amounts?.map((item) => item?.toMap()),
      'currency': currency,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory OrdersAmount.fromMap(Map<String, dynamic> map) {
    return OrdersAmount(
      amounts: map['amounts']?.map((item) => OrdersAmountItem.fromMap(item)),
      currency: map['currency'] as String,
    );
  }
}

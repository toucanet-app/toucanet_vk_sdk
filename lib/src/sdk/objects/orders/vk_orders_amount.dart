import 'vk_orders_amount_item.dart';

class VKOrdersAmount {
  final List<VKOrdersAmountItem> amounts;

  /// Currency name.
  final String currency;

  const VKOrdersAmount({
    this.amounts,
    this.currency,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amounts': amounts?.map((item) => item?.toMap())?.toList(),
      'currency': currency,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKOrdersAmount.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKOrdersAmount(
      amounts: map['amounts']
          ?.map((item) => VKOrdersAmountItem.fromMap(item))
          ?.toList(),
      currency: map['currency'] as String,
    );
  }
}

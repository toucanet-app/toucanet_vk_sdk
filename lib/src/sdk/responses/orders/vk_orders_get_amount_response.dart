import '../../objects/vk_objects.dart';

class VKOrdersGetAmountResponse {
  final List<VKOrdersAmountItem> amounts;

  /// Currency name.
  final String currency;

  const VKOrdersGetAmountResponse({
    this.amounts,
    this.currency,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amounts': amounts?.map((item) => item?.toMap()),
      'currency': currency,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKOrdersGetAmountResponse.fromMap(Map<String, dynamic> map) {
    return VKOrdersGetAmountResponse(
      amounts: map['amounts']?.map((item) => VKOrdersAmountItem.fromMap(item)),
      currency: map['currency'] as String,
    );
  }
}

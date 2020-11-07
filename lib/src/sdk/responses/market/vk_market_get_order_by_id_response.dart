import '../../objects/vk_objects.dart';

class VKMarketGetOrderByIdResponse {
  final VKMarketOrder order;

  const VKMarketGetOrderByIdResponse({
    this.order,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'order': order?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMarketGetOrderByIdResponse.fromMap(Map<String, dynamic> map) {
    return VKMarketGetOrderByIdResponse(
      order: VKMarketOrder.fromMap(map['order']),
    );
  }
}

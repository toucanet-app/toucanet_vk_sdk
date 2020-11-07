import '../../objects/vk_objects.dart';

class VKOrdersGetResponse {
  final List<VKOrdersOrder> ordersGetResponse;

  const VKOrdersGetResponse({
    this.ordersGetResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'orders_get_response':
          ordersGetResponse?.map((item) => item?.toMap())?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKOrdersGetResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKOrdersGetResponse(
      ordersGetResponse: map['orders_get_response']
          ?.map((item) => VKOrdersOrder.fromMap(item))
          ?.toList(),
    );
  }
}

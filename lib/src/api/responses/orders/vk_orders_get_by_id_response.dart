import '../../objects/vk_objects.dart';

class VKOrdersGetByIdResponse {
  final List<VKOrdersOrder> ordersGetByIdResponse;

  const VKOrdersGetByIdResponse({
    this.ordersGetByIdResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'orders_getById_response': ordersGetByIdResponse
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKOrdersGetByIdResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKOrdersGetByIdResponse(
      ordersGetByIdResponse: map['orders_getById_response']
          ?.map<List<VKOrdersOrder>>(
            (item) => VKOrdersOrder.fromMap(item),
          )
          ?.toList(),
    );
  }
}

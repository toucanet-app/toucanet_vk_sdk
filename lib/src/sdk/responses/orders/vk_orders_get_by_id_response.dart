import '../../objects/vk_objects.dart';

class VKOrdersGetByIdResponse {
  final List<VKOrdersOrder> ordersGetByIdResponse;

  const VKOrdersGetByIdResponse({
    this.ordersGetByIdResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'orders_getById_response':
          ordersGetByIdResponse?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKOrdersGetByIdResponse.fromMap(Map<String, dynamic> map) {
    return VKOrdersGetByIdResponse(
      ordersGetByIdResponse: map['orders_getById_response']
          ?.map((item) => VKOrdersOrder.fromMap(item)),
    );
  }
}

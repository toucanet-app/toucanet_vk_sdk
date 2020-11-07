import '../../objects/vk_objects.dart';

class VKSecureGetTransactionsHistoryResponse {
  final List<VKSecureTransaction> secureGetTransactionsHistoryResponse;

  const VKSecureGetTransactionsHistoryResponse({
    this.secureGetTransactionsHistoryResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secure_getTransactionsHistory_response':
          secureGetTransactionsHistoryResponse
              ?.map(
                (item) => item?.toMap(),
              )
              ?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKSecureGetTransactionsHistoryResponse.fromMap(
      Map<String, dynamic> map) {
    if (map == null) return null;

    return VKSecureGetTransactionsHistoryResponse(
      secureGetTransactionsHistoryResponse:
          map['secure_getTransactionsHistory_response']
              ?.map<List<VKSecureTransaction>>(
                (item) => VKSecureTransaction.fromMap(item),
              )
              ?.toList(),
    );
  }
}

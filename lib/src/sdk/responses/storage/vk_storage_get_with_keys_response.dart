import '../../objects/vk_objects.dart';

class VKStorageGetWithKeysResponse {
  final List<VKStorageValue> storageGetWithKeysResponse;

  const VKStorageGetWithKeysResponse({
    this.storageGetWithKeysResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storage_get_with_keys_response':
          storageGetWithKeysResponse?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKStorageGetWithKeysResponse.fromMap(Map<String, dynamic> map) {
    return VKStorageGetWithKeysResponse(
      storageGetWithKeysResponse: map['storage_get_with_keys_response']
          ?.map((item) => VKStorageValue.fromMap(item)),
    );
  }
}

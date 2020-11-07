import '../../objects/vk_objects.dart';

class VKStorageGetV5110Response {
  final List<VKStorageValue> storageGetV5110Response;

  const VKStorageGetV5110Response({
    this.storageGetV5110Response,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storage_get_v5110_response': storageGetV5110Response
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKStorageGetV5110Response.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKStorageGetV5110Response(
      storageGetV5110Response: map['storage_get_v5110_response']
          ?.map<List<VKStorageValue>>(
            (item) => VKStorageValue.fromMap(item),
          )
          ?.toList(),
    );
  }
}

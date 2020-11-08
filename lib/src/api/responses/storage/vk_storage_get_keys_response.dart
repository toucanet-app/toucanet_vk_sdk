class VKStorageGetKeysResponse {
  /// The list of Key name.
  final List<String> storageGetKeysResponse;

  const VKStorageGetKeysResponse({
    this.storageGetKeysResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storage_getKeys_response': storageGetKeysResponse,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKStorageGetKeysResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKStorageGetKeysResponse(
      storageGetKeysResponse: map['storage_getKeys_response'] as List<String>,
    );
  }
}

class VKStreamingGetServerUrlResponse {
  /// Server host.
  final String endpoint;

  /// Access key.
  final String key;

  const VKStreamingGetServerUrlResponse({
    this.endpoint,
    this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
      'key': key,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKStreamingGetServerUrlResponse.fromMap(Map<String, dynamic> map) {
    return VKStreamingGetServerUrlResponse(
      endpoint: map['endpoint'] as String,
      key: map['key'] as String,
    );
  }
}

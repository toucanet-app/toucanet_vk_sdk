class VKAuthRestoreResponse {
  /// 1 if success.
  final int success;

  /// Parameter needed to grant access by code.
  final String sid;

  const VKAuthRestoreResponse({
    this.success,
    this.sid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'success': success,
      'sid': sid,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAuthRestoreResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAuthRestoreResponse(
      success: map['success'] as int,
      sid: map['sid'] as String,
    );
  }
}

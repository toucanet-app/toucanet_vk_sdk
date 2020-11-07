class VKSecureCheckTokenResponse {
  /// Date when access_token has been generated in Unixtime.
  final int date;

  /// Date when access_token will expire in Unixtime.
  final int expire;

  /// Returns if successfully processed.
  final int success;

  /// User ID.
  final int userId;

  const VKSecureCheckTokenResponse({
    this.date,
    this.expire,
    this.success,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'date': date,
      'expire': expire,
      'success': success,
      'user_id': userId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKSecureCheckTokenResponse.fromMap(Map<String, dynamic> map) {
    return VKSecureCheckTokenResponse(
      date: map['date'] as int,
      expire: map['expire'] as int,
      success: map['success'] as int,
      userId: map['user_id'] as int,
    );
  }
}

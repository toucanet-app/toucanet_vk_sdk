import 'package:meta/meta.dart';

class VKAccountChangePasswordResponse {
  /// New token.
  final String token;

  /// New secret.
  final String secret;

  const VKAccountChangePasswordResponse({
    @required this.token,
    this.secret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'token': token,
      'secret': secret,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAccountChangePasswordResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAccountChangePasswordResponse(
      token: map['token'] as String,
      secret: map['secret'] as String,
    );
  }
}

import 'package:meta/meta.dart';

class VKOauthError {
  /// Error type.
  final String error;

  /// Error description.
  final String errorDescription;

  /// URI for validation.
  final String redirectUri;

  const VKOauthError({
    @required this.error,
    @required this.errorDescription,
    this.redirectUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': error,
      'error_description': errorDescription,
      'redirect_uri': redirectUri,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKOauthError.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKOauthError(
      error: map['error'] as String,
      errorDescription: map['error_description'] as String,
      redirectUri: map['redirect_uri'] as String,
    );
  }
}

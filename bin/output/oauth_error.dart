import 'package:meta/meta.dart';

class OauthError {
  /// Error type.
  final String error;

  /// Error description.
  final String errorDescription;

  /// URI for validation.
  final String redirectUri;

  const OauthError({
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

  factory OauthError.fromMap(Map<String, dynamic> map) {
    return OauthError(
      error: map['error'] as String,
      errorDescription: map['error_description'] as String,
      redirectUri: map['redirect_uri'] as String,
    );
  }
}

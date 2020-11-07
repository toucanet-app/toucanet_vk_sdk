class VKGroupsGetCallbackConfirmationCodeResponse {
  /// Confirmation code.
  final String code;

  const VKGroupsGetCallbackConfirmationCodeResponse({
    this.code,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKGroupsGetCallbackConfirmationCodeResponse.fromMap(
      Map<String, dynamic> map) {
    return VKGroupsGetCallbackConfirmationCodeResponse(
      code: map['code'] as String,
    );
  }
}

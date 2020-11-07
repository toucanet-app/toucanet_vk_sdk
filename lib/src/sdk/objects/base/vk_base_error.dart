import 'vk_base_request_param.dart';

class VKBaseError {
  /// Error code.
  final int errorCode;

  /// Error subcode.
  final int errorSubcode;

  /// Error message.
  final String errorMsg;

  /// Localized error message.
  final String errorText;

  final List<VKBaseRequestParam> requestParams;

  const VKBaseError({
    this.errorCode,
    this.errorSubcode,
    this.errorMsg,
    this.errorText,
    this.requestParams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error_code': errorCode,
      'error_subcode': errorSubcode,
      'error_msg': errorMsg,
      'error_text': errorText,
      'request_params': requestParams?.map((item) => item?.toMap())?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKBaseError.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKBaseError(
      errorCode: map['error_code'] as int,
      errorSubcode: map['error_subcode'] as int,
      errorMsg: map['error_msg'] as String,
      errorText: map['error_text'] as String,
      requestParams: map['request_params']
          ?.map((item) => VKBaseRequestParam.fromMap(item))
          ?.toList(),
    );
  }
}

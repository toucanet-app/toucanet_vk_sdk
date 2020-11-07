class VKLeadsMetricHitResponse {
  /// Information whether request has been processed successfully.
  final bool result;

  /// Redirect link.
  final String redirectLink;

  const VKLeadsMetricHitResponse({
    this.result,
    this.redirectLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'result': result,
      'redirect_link': redirectLink,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKLeadsMetricHitResponse.fromMap(Map<String, dynamic> map) {
    return VKLeadsMetricHitResponse(
      result: map['result'] as bool,
      redirectLink: map['redirect_link'] as String,
    );
  }
}

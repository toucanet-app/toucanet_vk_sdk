class VKAdsCreateTargetGroupResponse {
  /// Group ID.
  final int id;

  /// Pixel code.
  final String pixel;

  const VKAdsCreateTargetGroupResponse({
    this.id,
    this.pixel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'pixel': pixel,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsCreateTargetGroupResponse.fromMap(Map<String, dynamic> map) {
    return VKAdsCreateTargetGroupResponse(
      id: map['id'] as int,
      pixel: map['pixel'] as String,
    );
  }
}

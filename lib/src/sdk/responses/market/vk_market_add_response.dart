class VKMarketAddResponse {
  /// Item ID.
  final int marketItemId;

  const VKMarketAddResponse({
    this.marketItemId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'market_item_id': marketItemId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMarketAddResponse.fromMap(Map<String, dynamic> map) {
    return VKMarketAddResponse(
      marketItemId: map['market_item_id'] as int,
    );
  }
}

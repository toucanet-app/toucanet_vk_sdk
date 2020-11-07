class VKMarketAddAlbumResponse {
  /// Album ID.
  final int marketAlbumId;

  const VKMarketAddAlbumResponse({
    this.marketAlbumId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'market_album_id': marketAlbumId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMarketAddAlbumResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKMarketAddAlbumResponse(
      marketAlbumId: map['market_album_id'] as int,
    );
  }
}

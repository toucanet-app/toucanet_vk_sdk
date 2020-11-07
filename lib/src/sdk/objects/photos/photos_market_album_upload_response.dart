class VKPhotosMarketAlbumUploadResponse {
  /// Community ID.
  final int gid;

  /// Uploading hash.
  final String hash;

  /// Uploaded photo data.
  final String photo;

  /// Upload server number.
  final int server;

  const VKPhotosMarketAlbumUploadResponse({
    this.gid,
    this.hash,
    this.photo,
    this.server,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gid': gid,
      'hash': hash,
      'photo': photo,
      'server': server,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPhotosMarketAlbumUploadResponse.fromMap(Map<String, dynamic> map) {
    return VKPhotosMarketAlbumUploadResponse(
      gid: map['gid'] as int,
      hash: map['hash'] as String,
      photo: map['photo'] as String,
      server: map['server'] as int,
    );
  }
}

class VKPhotosOwnerUploadResponse {
  /// Uploading hash.
  final String hash;

  /// Uploaded photo data.
  final String photo;

  /// Upload server number.
  final int server;

  const VKPhotosOwnerUploadResponse({
    this.hash,
    this.photo,
    this.server,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hash': hash,
      'photo': photo,
      'server': server,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPhotosOwnerUploadResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKPhotosOwnerUploadResponse(
      hash: map['hash'] as String,
      photo: map['photo'] as String,
      server: map['server'] as int,
    );
  }
}

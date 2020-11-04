class PhotosPhotoUploadResponse {
  /// Album ID.
  final int aid;

  /// Uploading hash.
  final String hash;

  /// Uploaded photos data.
  final String photosList;

  /// Upload server number.
  final int server;

  const PhotosPhotoUploadResponse({
    this.aid,
    this.hash,
    this.photosList,
    this.server,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aid': aid,
      'hash': hash,
      'photos_list': photosList,
      'server': server,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory PhotosPhotoUploadResponse.fromMap(Map<String, dynamic> map) {
    return PhotosPhotoUploadResponse(
      aid: map['aid'] as int,
      hash: map['hash'] as String,
      photosList: map['photos_list'] as String,
      server: map['server'] as int,
    );
  }
}

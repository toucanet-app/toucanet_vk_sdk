class VKPhotosMarketUploadResponse {
  /// Crop data.
  final String cropData;

  /// Crop hash.
  final String cropHash;

  /// Community ID.
  final int groupId;

  /// Uploading hash.
  final String hash;

  /// Uploaded photo data.
  final String photo;

  /// Upload server number.
  final int server;

  const VKPhotosMarketUploadResponse({
    this.cropData,
    this.cropHash,
    this.groupId,
    this.hash,
    this.photo,
    this.server,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crop_data': cropData,
      'crop_hash': cropHash,
      'group_id': groupId,
      'hash': hash,
      'photo': photo,
      'server': server,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPhotosMarketUploadResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKPhotosMarketUploadResponse(
      cropData: map['crop_data'] as String,
      cropHash: map['crop_hash'] as String,
      groupId: map['group_id'] as int,
      hash: map['hash'] as String,
      photo: map['photo'] as String,
      server: map['server'] as int,
    );
  }
}



class VideoSaveResult {
  /// Video access key.
  final String accessKey;

  /// Video description.
  final String description;

  /// Video owner ID.
  final int ownerId;

  /// Video title.
  final String title;

  /// URL for the video uploading.
  final String uploadUrl;

  /// Video ID.
  final int videoId;

  const VideoSaveResult({
    this.accessKey,
    this.description,
    this.ownerId,
    this.title,
    this.uploadUrl,
    this.videoId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access_key': accessKey,
      'description': description,
      'owner_id': ownerId,
      'title': title,
      'upload_url': uploadUrl,
      'video_id': videoId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VideoSaveResult.fromMap(Map<String, dynamic> map) {
    return VideoSaveResult(
      accessKey: map['access_key'] as String,
      description: map['description'] as String,
      ownerId: map['owner_id'] as int,
      title: map['title'] as String,
      uploadUrl: map['upload_url'] as String,
      videoId: map['video_id'] as int,
    );
  }
}

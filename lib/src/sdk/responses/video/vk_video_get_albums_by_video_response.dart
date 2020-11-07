class VKVideoGetAlbumsByVideoResponse {
  /// The list of Album ID.
  final List<int> videoGetAlbumsByVideoResponse;

  const VKVideoGetAlbumsByVideoResponse({
    this.videoGetAlbumsByVideoResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'video_getAlbumsByVideo_response': videoGetAlbumsByVideoResponse,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKVideoGetAlbumsByVideoResponse.fromMap(Map<String, dynamic> map) {
    return VKVideoGetAlbumsByVideoResponse(
      videoGetAlbumsByVideoResponse:
          map['video_getAlbumsByVideo_response'] as List<int>,
    );
  }
}

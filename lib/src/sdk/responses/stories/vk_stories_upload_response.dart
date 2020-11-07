class VKStoriesUploadResponse {
  /// A string hash that is used in the stories.save method.
  final String uploadResult;

  const VKStoriesUploadResponse({
    this.uploadResult,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'upload_result': uploadResult,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKStoriesUploadResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKStoriesUploadResponse(
      uploadResult: map['upload_result'] as String,
    );
  }
}

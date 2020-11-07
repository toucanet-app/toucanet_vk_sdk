class VKDocsDocUploadResponse {
  /// Uploaded file data.
  final String file;

  const VKDocsDocUploadResponse({
    this.file,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'file': file,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKDocsDocUploadResponse.fromMap(Map<String, dynamic> map) {
    return VKDocsDocUploadResponse(
      file: map['file'] as String,
    );
  }
}

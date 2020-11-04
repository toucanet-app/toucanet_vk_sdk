

class DocsDocUploadResponse {
  /// Uploaded file data.
  final String file;

  const DocsDocUploadResponse({
    this.file,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'file': file,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory DocsDocUploadResponse.fromMap(Map<String, dynamic> map) {
    return DocsDocUploadResponse(
      file: map['file'] as String,
    );
  }
}

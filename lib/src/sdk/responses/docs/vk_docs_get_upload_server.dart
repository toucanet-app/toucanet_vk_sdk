import 'package:meta/meta.dart';

class VKDocsGetUploadServer {
  /// Upload URL.
  final String uploadUrl;

  const VKDocsGetUploadServer({
    @required this.uploadUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'upload_url': uploadUrl,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKDocsGetUploadServer.fromMap(Map<String, dynamic> map) {
    return VKDocsGetUploadServer(
      uploadUrl: map['upload_url'] as String,
    );
  }
}

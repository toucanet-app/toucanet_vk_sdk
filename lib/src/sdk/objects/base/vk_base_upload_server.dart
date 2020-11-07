import 'package:meta/meta.dart';

class VKBaseUploadServer {
  /// Upload URL.
  final String uploadUrl;

  const VKBaseUploadServer({
    @required this.uploadUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'upload_url': uploadUrl,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKBaseUploadServer.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKBaseUploadServer(
      uploadUrl: map['upload_url'] as String,
    );
  }
}

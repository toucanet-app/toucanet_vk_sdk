import 'package:meta/meta.dart';

class BaseUploadServer {
  /// Upload URL.
  final String uploadUrl;

  const BaseUploadServer({
    @required this.uploadUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'upload_url': uploadUrl,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory BaseUploadServer.fromMap(Map<String, dynamic> map) {
    return BaseUploadServer(
      uploadUrl: map['upload_url'] as String,
    );
  }
}

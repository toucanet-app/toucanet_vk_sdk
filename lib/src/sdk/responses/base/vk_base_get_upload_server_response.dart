import 'package:meta/meta.dart';

class VKBaseGetUploadServerResponse {
  /// Upload URL.
  final String uploadUrl;

  const VKBaseGetUploadServerResponse({
    @required this.uploadUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'upload_url': uploadUrl,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKBaseGetUploadServerResponse.fromMap(Map<String, dynamic> map) {
    return VKBaseGetUploadServerResponse(
      uploadUrl: map['upload_url'] as String,
    );
  }
}

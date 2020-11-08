import 'package:meta/meta.dart';

class VKPhotosGetMarketUploadServerResponse {
  /// Upload URL.
  final String uploadUrl;

  const VKPhotosGetMarketUploadServerResponse({
    @required this.uploadUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'upload_url': uploadUrl,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPhotosGetMarketUploadServerResponse.fromMap(
      Map<String, dynamic> map) {
    if (map == null) return null;

    return VKPhotosGetMarketUploadServerResponse(
      uploadUrl: map['upload_url'] as String,
    );
  }
}

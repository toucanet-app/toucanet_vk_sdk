class VKAppWidgetsGetGroupImageUploadServerResponse {
  /// To upload an image, generate POST-request to upload_url with a file in photo field. Then call appWidgets.saveAppImage method.
  final String uploadUrl;

  const VKAppWidgetsGetGroupImageUploadServerResponse({
    this.uploadUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'upload_url': uploadUrl,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAppWidgetsGetGroupImageUploadServerResponse.fromMap(
      Map<String, dynamic> map) {
    return VKAppWidgetsGetGroupImageUploadServerResponse(
      uploadUrl: map['upload_url'] as String,
    );
  }
}

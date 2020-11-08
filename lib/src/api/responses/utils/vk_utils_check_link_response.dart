import '../../objects/vk_objects.dart';

class VKUtilsCheckLinkResponse {
  /// Link URL.
  final String link;

  final VKUtilsLinkCheckedStatus status;

  const VKUtilsCheckLinkResponse({
    this.link,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'link': link,
      'status': status?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKUtilsCheckLinkResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKUtilsCheckLinkResponse(
      link: map['link'] as String,
      status: VKUtilsLinkCheckedStatus(map['status']),
    );
  }
}

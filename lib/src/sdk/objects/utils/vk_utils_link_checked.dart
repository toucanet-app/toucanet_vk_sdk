import 'vk_utils_link_checked_status.dart';

class VKUtilsLinkChecked {
  /// Link URL.
  final String link;

  final VKUtilsLinkCheckedStatus status;

  const VKUtilsLinkChecked({
    this.link,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'link': link,
      'status': status?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKUtilsLinkChecked.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKUtilsLinkChecked(
      link: map['link'] as String,
      status: VKUtilsLinkCheckedStatus(map['status']),
    );
  }
}

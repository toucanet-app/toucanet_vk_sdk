import 'utils_link_checked_status.dart';

class UtilsLinkChecked {
  /// Link URL.
  final String link;

  final UtilsLinkCheckedStatus status;

  const UtilsLinkChecked({
    this.link,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'link': link,
      'status': status?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory UtilsLinkChecked.fromMap(Map<String, dynamic> map) {
    return UtilsLinkChecked(
      link: map['link'] as String,
      status: UtilsLinkCheckedStatus(map['status']),
    );
  }
}

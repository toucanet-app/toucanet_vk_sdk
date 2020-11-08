import 'package:meta/meta.dart';

class VKAdsLinkStatus {
  /// Reject reason.
  final String description;

  /// URL.
  final String redirectUrl;

  /// Link status.
  final String status;

  const VKAdsLinkStatus({
    @required this.description,
    @required this.redirectUrl,
    @required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'redirect_url': redirectUrl,
      'status': status,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsLinkStatus.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAdsLinkStatus(
      description: map['description'] as String,
      redirectUrl: map['redirect_url'] as String,
      status: map['status'] as String,
    );
  }
}

import 'package:meta/meta.dart';

class VKAdswebGetAdUnitCodeResponse {
  final String html;

  const VKAdswebGetAdUnitCodeResponse({
    @required this.html,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'html': html,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdswebGetAdUnitCodeResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAdswebGetAdUnitCodeResponse(
      html: map['html'] as String,
    );
  }
}

import 'package:meta/meta.dart';

class VKAdsGetFloodStatsResponse {
  /// Requests left.
  final int left;

  /// Time to refresh in seconds.
  final int refresh;

  const VKAdsGetFloodStatsResponse({
    @required this.left,
    @required this.refresh,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'left': left,
      'refresh': refresh,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsGetFloodStatsResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAdsGetFloodStatsResponse(
      left: map['left'] as int,
      refresh: map['refresh'] as int,
    );
  }
}

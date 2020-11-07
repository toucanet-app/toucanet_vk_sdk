import 'package:meta/meta.dart';

class VKAdsFloodStats {
  /// Requests left.
  final int left;

  /// Time to refresh in seconds.
  final int refresh;

  const VKAdsFloodStats({
    @required this.left,
    @required this.refresh,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'left': left,
      'refresh': refresh,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsFloodStats.fromMap(Map<String, dynamic> map) {
    return VKAdsFloodStats(
      left: map['left'] as int,
      refresh: map['refresh'] as int,
    );
  }
}

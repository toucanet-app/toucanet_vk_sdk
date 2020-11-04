import 'package:meta/meta.dart';

class AdsFloodStats {
  /// Requests left.
  final int left;

  /// Time to refresh in seconds.
  final int refresh;

  const AdsFloodStats({
    @required this.left,
    @required this.refresh,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'left': left,
      'refresh': refresh,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory AdsFloodStats.fromMap(Map<String, dynamic> map) {
    return AdsFloodStats(
      left: map['left'] as int,
      refresh: map['refresh'] as int,
    );
  }
}

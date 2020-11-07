import 'package:meta/meta.dart';

class VKDownloadedGamesPaidStatusResponse {
  /// Game has been paid.
  final bool isPaid;

  const VKDownloadedGamesPaidStatusResponse({
    @required this.isPaid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'is_paid': isPaid,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKDownloadedGamesPaidStatusResponse.fromMap(
      Map<String, dynamic> map) {
    if (map == null) return null;

    return VKDownloadedGamesPaidStatusResponse(
      isPaid: map['is_paid'] as bool,
    );
  }
}

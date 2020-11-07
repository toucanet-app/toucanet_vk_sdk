import 'package:meta/meta.dart';

class VKUsersGetSubscriptionsExtendedResponse {
  /// Total number of available results.
  final int count;

  const VKUsersGetSubscriptionsExtendedResponse({
    @required this.count,
  }) : assert(count >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKUsersGetSubscriptionsExtendedResponse.fromMap(
      Map<String, dynamic> map) {
    if (map == null) return null;

    return VKUsersGetSubscriptionsExtendedResponse(
      count: map['count'] as int,
    );
  }
}

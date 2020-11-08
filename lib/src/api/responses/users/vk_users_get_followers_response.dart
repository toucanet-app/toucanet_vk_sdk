import 'package:meta/meta.dart';

class VKUsersGetFollowersResponse {
  /// Total friends number.
  final int count;

  /// The list of User ID.
  final List<int> items;

  const VKUsersGetFollowersResponse({
    @required this.count,
    @required this.items,
  }) : assert(count >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKUsersGetFollowersResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKUsersGetFollowersResponse(
      count: map['count'] as int,
      items: map['items'] as List<int>,
    );
  }
}

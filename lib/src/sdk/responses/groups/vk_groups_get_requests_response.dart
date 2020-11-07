import 'package:meta/meta.dart';

class VKGroupsGetRequestsResponse {
  /// Total communities number.
  final int count;

  /// The list of User ID.
  final List<int> items;

  const VKGroupsGetRequestsResponse({
    @required this.count,
    @required this.items,
  }) : assert(count >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKGroupsGetRequestsResponse.fromMap(Map<String, dynamic> map) {
    return VKGroupsGetRequestsResponse(
      count: map['count'] as int,
      items: map['items'] as List<int>,
    );
  }
}

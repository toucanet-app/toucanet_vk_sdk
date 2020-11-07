import 'package:meta/meta.dart';

class VKGroupsGetMembersResponse {
  /// Total members number.
  final int count;

  /// The list of User ID.
  final List<int> items;

  const VKGroupsGetMembersResponse({
    @required this.count,
    @required this.items,
  }) : assert(count >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKGroupsGetMembersResponse.fromMap(Map<String, dynamic> map) {
    return VKGroupsGetMembersResponse(
      count: map['count'] as int,
      items: map['items'] as List<int>,
    );
  }
}

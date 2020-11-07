import 'package:meta/meta.dart';

class VKGroupsGetResponse {
  /// Total communities number.
  final int count;

  /// The list of Community ID.
  final List<int> items;

  const VKGroupsGetResponse({
    @required this.count,
    @required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKGroupsGetResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKGroupsGetResponse(
      count: map['count'] as int,
      items: map['items'] as List<int>,
    );
  }
}

import 'package:meta/meta.dart';

class VKLikesGetListResponse {
  /// Total number.
  final int count;

  /// The list of User ID.
  final List<int> items;

  const VKLikesGetListResponse({
    @required this.count,
    @required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKLikesGetListResponse.fromMap(Map<String, dynamic> map) {
    return VKLikesGetListResponse(
      count: map['count'] as int,
      items: map['items'] as List<int>,
    );
  }
}

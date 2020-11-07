import 'package:meta/meta.dart';

class VKStoriesGetBannedResponse {
  /// Stories count.
  final int count;

  /// The list of Owner ID.
  final List<int> items;

  const VKStoriesGetBannedResponse({
    @required this.count,
    @required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKStoriesGetBannedResponse.fromMap(Map<String, dynamic> map) {
    return VKStoriesGetBannedResponse(
      count: map['count'] as int,
      items: map['items'] as List<int>,
    );
  }
}

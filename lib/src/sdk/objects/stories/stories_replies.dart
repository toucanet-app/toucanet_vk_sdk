import 'package:meta/meta.dart';

class VKStoriesReplies {
  /// Replies number..
  final int count;

  /// New replies number..
  final int newCount;

  const VKStoriesReplies({
    @required this.count,
    this.newCount,
  }) : assert(count >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'new': newCount,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKStoriesReplies.fromMap(Map<String, dynamic> map) {
    return VKStoriesReplies(
      count: map['count'] as int,
      newCount: map['new'] as int,
    );
  }
}

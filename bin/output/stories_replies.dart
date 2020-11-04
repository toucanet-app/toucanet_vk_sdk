import 'package:meta/meta.dart';

class StoriesReplies {
  /// Replies number..
  final int count;

  /// New replies number..
  final int newCount;

  const StoriesReplies({
    @required this.count,
    this.newCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'new': newCount,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory StoriesReplies.fromMap(Map<String, dynamic> map) {
    return StoriesReplies(
      count: map['count'] as int,
      newCount: map['new'] as int,
    );
  }
}

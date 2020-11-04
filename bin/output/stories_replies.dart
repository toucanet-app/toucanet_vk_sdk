import 'package:meta/meta.dart';

class StoriesReplies {
  /// Replies number..
  final int count;

  /// New replies number..
  final int new;

  const StoriesReplies({
    @required this.count,
    this.new,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'new': new,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory StoriesReplies.fromMap(Map<String, dynamic> map) {
    return StoriesReplies(
      count: map['count'] as int,
      new: map['new'] as int,
    );
  }
}

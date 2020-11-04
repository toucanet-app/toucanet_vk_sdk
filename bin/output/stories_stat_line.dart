import 'package:meta/meta.dart';

class StoriesStatLine {
  final String name;

  final int counter;

  final bool isUnavailable;

  const StoriesStatLine({
    @required this.name,
    this.counter,
    this.isUnavailable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'counter': counter,
      'is_unavailable': isUnavailable,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory StoriesStatLine.fromMap(Map<String, dynamic> map) {
    return StoriesStatLine(
      name: map['name'] as String,
      counter: map['counter'] as int,
      isUnavailable: map['is_unavailable'] as bool,
    );
  }
}

import 'package:meta/meta.dart';

class VKStoriesStatLine {
  final String name;

  final int counter;

  final bool isUnavailable;

  const VKStoriesStatLine({
    @required this.name,
    this.counter,
    this.isUnavailable,
  }) : assert(counter >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'counter': counter,
      'is_unavailable': isUnavailable,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKStoriesStatLine.fromMap(Map<String, dynamic> map) {
    return VKStoriesStatLine(
      name: map['name'] as String,
      counter: map['counter'] as int,
      isUnavailable: map['is_unavailable'] as bool,
    );
  }
}
